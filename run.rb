require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end




get '/form' do
  @states=[]

  state={}
  state={id:'IN', name:'Indiana'}
  @states<<state

  state={}
  state={id:'IL', name:'Illinois'}
  @states<<state

  state={}
  state={id:'OH', name:'Ohio'}
  @states<<state

  state={}
  state={id:'MI', name:'Michigan'}
  @states<<state

  state={}
  state={id:'IA', name:'Iowa'}
  @states<<state

  @states.sort_by! {| state | state[:name]}

  erb :form, layout: :main
end

post '/form' do
  # code!
  erb :form, layout: :main
end

get '/example' do
  # code!
  erb :example, layout: :main
end

post '/example' do
  # code!
  erb :example, layout: :main
end
