# kmFlow Pagos [![Gem Version](https://badge.fury.io/rb/kmflow.svg)](https://badge.fury.io/rb/kmflow)
Gema para integrar los pagos de Flow.cl en un proyecto en Ruby on Rails

## Instalación
Modo directo:
```ruby
gem install kmflow
```
También puedes agregar la linea a tu Gemfile:

```ruby
gem 'kmflow'
```
Y después ejecuta
```ruby
bundle install
```

## Primeros pasos
1 - Agrega el archivo de configuración base en tu proyecto, ejecutando en consola:

    $ rails g kmflow:install config

2 - Busca el archivo en `RAILS_ROOT\config\kmflow.yml` y llenalo con tus datos de www.flow.cl

3 - Crea la carpeta `RAILS_ROOT\flow_keys`, guarda tus llaves descargadas desde tu cuenta y agrega las rutas en el config

##### Generadores
Puedes copiar el controlador en tu proyecto, así puedes agregar tu código para guardar los datos en tu base de datos, solo ejecuta en consola:

    $ rails g kmflow:install controller

También puedes copiar las vistas por defecto de las páginas de `éxito` y `fracaso`

    $ rails g kmflow:install views
    
En las vistas tienes la variable `@flow` para agregar la información:

```ruby
@flow['kpf_orden']      # Número de la orden realizada (corresponde a tu ID)
@flow['kpf_concepto']   # Descripción del producto pagado
@flow['kpf_pagador']    # Email del comprador
@flow['kpf_flow_order'] # Número de la orden interna de Flow
```


## Modo de uso
Puedes crear un botón de pago en cualquier vista agregando el código:

```ruby
<%= Kmflow::Pagos::nuevo orden: 123, concepto: 'Mi producto', monto: 5000, email: 'comprador@mail.cl' %>
```
Nota: se creará un formulario con clase `.flow-form` para que puedas darle estilo
##### Opcional
Al código del botón puedes agregar los siguientes parámetros opcionales:
```ruby
class: 'miClase'    # Sobrescribe la clase del formulario
boton: 'Pagar'      # Sobrescribe el texto del botón, por defecto es 'Pagar con Webpay/Servipag/Flow'
```
