Rails.application.routes.draw do
  scope '/flow' do
    post 'confirma' => 'kmflow#flow_confirma', as: 'flow_confirma'
    post 'exito' => 'kmflow#flow_exito', as: 'flow_exito'
    post 'fracaso' => 'kmflow#flow_fracaso', as: 'flow_fracaso'
  end
end
