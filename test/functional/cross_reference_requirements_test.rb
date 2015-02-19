require 'test_helper'

class CrossReferenceRequirementsTest < ActiveSupport::TestCase

  # == Structural requirements for Cross-reference

  test '5.7.5 (V)' do
    # From one Class, it should be possible to refer to one or several other
    # Classes.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.6 (V)' do
    # It should be possible to refer to a Class from one or several other
    # Classes.
    skip
  end

  test '5.7.7 (B)' do
    # From one Basic file, it should be possible to refer to one or several
    # other Basic files.

    # REMARK: Obligatory for case records, relevant to many task systems.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.8 (B)' do
    # It should be possible to refer to a Basic file from one or several other
    # Basic files.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  test '5.7.9 (B)' do
    # From one Basic file, it should be possible to refer to one or more Basic
    # records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.10 (B)' do
    # It should be possible to refer to a Basic file from one or several other
    # Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  test '5.7.11 (B)' do
    # From one Basic record, it should be possible to refer to one or several
    # other Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.12 (B)' do
    # It should be possible to refer to a Basic record from one or several other
    #  Basic records.

    # REMARK: Obligatory for case records, relevant to many task systems.
    skip
  end

  # == Functional requirements for Cross-reference

  test '5.7.13 (O)' do
    # There must be a service/function that can store, retrieve, alter and
    # delete a Cross-reference between:
    #  · Basic files
    #  · Basic records
    # or to references between them.
    NOT_YET_IMPLEMENTED
  end

  test '5.7.14 (V)' do
    # There should be a service/function that can store, retrieve, alter and
    # delete a Cross-reference between Classes.
    NOT_YET_IMPLEMENTED
  end

end
