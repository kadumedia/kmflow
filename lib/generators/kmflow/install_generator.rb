module Kmflow
  class InstallGenerator < Rails::Generators::Base
    desc 'Copia los archivos al proyecto base'
    source_root File.expand_path("../../../../", __FILE__)
    argument :tipo, tipe: :string, default: false
    def create_install
      if tipo == 'controller'
        copy_file "app/controllers/kmflow_controller.rb", "app/controllers/kmflow_controller.rb"
      elsif tipo == 'views'
        copy_file "app/views/kmflow/flow_exito.html.erb", "app/views/kmflow/flow_exito.html.erb"
        copy_file "app/views/kmflow/flow_fracaso.html.erb", "app/views/kmflow/flow_fracaso.html.erb"
      elsif tipo == 'config'
        copy_file "lib/generators/kmflow.yml", "config/kmflow.yml"
      else
        puts '', '   ##### Integración de pagos Flow.cl #####', ''
        puts '  Puedes generar el archivo de configuración base, el controlador y las vistas de éxito y fracaso', ''
        puts '  rails g kmflow:install config'
        puts '  rails g kmflow:install controller'
        puts '  rails g kmflow:install views'
      end
    end
  end
end
