# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

# Root crumb
crumb :root do
  link "Home", root_path
end

crumb :fonds_index do
  link "Fonds", fonds_index_path
end

crumb :fonds do |fonds|
  link fonds.title, fonds
  parent :fonds_index
end

crumb :series do |series|
  link series.title, series
  parent :fonds, series.fonds
end
