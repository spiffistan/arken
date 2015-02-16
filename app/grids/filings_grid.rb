class FilingsGrid

  include Datagrid

  scope do
    Filing
  end

  column(:identifier)
  column(:title)
  column(:description)
  column(:created_at)
  column(:updated_at)

end
