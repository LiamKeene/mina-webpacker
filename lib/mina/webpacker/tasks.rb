set :webpack_dirs, ['app/javascript/']

namespace :webpacker do
  desc 'Compile webpack assets'
  task compile: :environment do
    command check_for_changes_script(
      at: fetch(:webpack_dirs),
      skip: %{echo "-----> Skipping webpacker compile"},
      changed: %{echo "-----> Compiling webpack assets"
      #{echo_cmd "#{fetch(:rake)} webpacker:compile"}}
    ), quiet: true
  end
end
