namespace :webpacker do
  desc "Compile webpack assets"
  task compile: :environment do
    comment %{Compiling webpack assets}
    command %{#{fetch(:rails)} webpacker:compile}
  end
end
