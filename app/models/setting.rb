# == Schema Information
#
# Table name: settings
#
#  id         :integer          not null, primary key
#  var        :string           not null
#  value      :text
#  thing_id   :integer
#  thing_type :string(30)
#  created_at :datetime
#  updated_at :datetime
#

class Setting < RailsSettings::CachedSettings

  audited
  
end