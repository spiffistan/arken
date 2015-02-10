class CreateTriggers < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION deny_change_for_protected_columns() RETURNS TRIGGER AS
      $$
      BEGIN
        IF (OLD.created_at <> NEW.created_at) THEN
          RAISE EXCEPTION 'Cannot alter created_at!';
        ELSIF (OLD.finalized_at <> NEW.finalized_at) THEN
          RAISE EXCEPTION 'Cannot alter finalized_at!';
        END IF;
        RETURN NULL;
      END
      $$ LANGUAGE 'plpgsql';

      CREATE TRIGGER deny_change_for_protected_columns
      BEFORE UPDATE OR DELETE ON fonds
      FOR EACH ROW EXECUTE PROCEDURE deny_change_for_protected_columns();
    SQL
  end

  def down
    execute <<-SQL
      DROP TRIGGER deny_change_for_protected_columns ON fonds;
      DROP FUNCTION IF EXISTS deny_change_for_protected_columns();
    SQL
  end
end
