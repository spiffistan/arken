class FilingsGrid
  include Datagrid

  scope do
    Filing
  end

  column('') do
    '<i class="icon e-icon-folder"></i>'.html_safe
  end
  column(:identifier)
  column(:title)
  column(:description)
  column(:created_at)
  column(:updated_at)
end
