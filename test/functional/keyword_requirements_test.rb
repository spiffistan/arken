require 'test_helper'

class KeywordRequirementsTest < ActiveSupport::TestCase
  # == Structural requirements for Keyword

  test '5.7.1 (V)' do
    # It must be possible for a Class to have registered no, one or several
    # Keywords and it must be possible for a Keyword to form part of no, one or
    # several Classes.

    assert_has_many :classification, :taggings, as: :taggable
    assert_has_many :classification, :tags, through: :taggings
    assert_belongs_to :tagging, :taggable, polymorphic: true
    assert_belongs_to :tagging, :tag
    assert_has_many :tag, :taggings

    classification_a = create(:classification)
    classification_b = create(:classification)

    classification_a.tag('testtag')
    classification_b.tag('testtag')

    assert Tag.count == 1
    assert classification_a.tag_names == ['testtag']
    assert classification_b.tag_names == ['testtag']
  end

  test '5.7.2 (V)' do
    # It must be possible for a Basic file to have registered no, one or several
    # Keywords and it must be possible for a Keyword to form part of no, one or
    # several Basic files.

    assert_has_many :filing, :taggings, as: :taggable
    assert_has_many :filing, :tags, through: :taggings
    assert_belongs_to :tagging, :taggable, polymorphic: true
    assert_belongs_to :tagging, :tag
    assert_has_many :tag, :taggings

    filing_a = create(:filing)
    filing_b = create(:filing)

    filing_a.tag('testtag')
    filing_b.tag('testtag')

    assert Tag.count == 1
    assert filing_a.tag_names == ['testtag']
    assert filing_b.tag_names == ['testtag']
  end

  test '5.7.3 (V)' do
    # It must be possible for a Basic record to have registered no, one or
    # several Keywords and it must be possible for a Keyword to form part of no,
    # one or several Basic records.

    assert_has_many :basic_record, :taggings, as: :taggable
    assert_has_many :basic_record, :tags, through: :taggings
    assert_belongs_to :tagging, :taggable, polymorphic: true
    assert_belongs_to :tagging, :tag
    assert_has_many :tag, :taggings

    record_a = create(:basic_record, :for_filing)
    record_b = create(:basic_record, :for_filing)

    record_a.tag('testtag')
    record_b.tag('testtag')

    assert Tag.count == 1
    assert record_a.tag_names == ['testtag']
    assert record_b.tag_names == ['testtag']
  end

  # == Functional requirements for Keyword

  test '5.7.4 (V)' do
    # There must be a service/function for linking one or more keywords to
    # classes, files and records (except simplified records).
    NOT_YET_IMPLEMENTED
  end
end
