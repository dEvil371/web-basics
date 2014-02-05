get '/' do
  @coach_message = params[:coach_message] || "what do you want kid ?"
  # Look in app/views/index.erb
  
  puts "self : #{self}"
  puts "self class: #{self.class}"
  puts "self instance variables from GET '/' route handler: #{self.instance_variables}"
  erb :index
end

post '/coach' do
  puts "self instance variable from POST '/coach' route handler: #{self.instance_variables}"  
  answer = params[:what]

  	if "I'm going to work"
	 		@coach_message = "Good boy"
	 	elsif "I'm bored !"
			@coach_message = "Good boy ! That's the spirit (and the answer I was waiting for)."
	 	elsif answer.upcase
	 		@coach_message = "I can feel your motivation son !"
	 	elsif answer.end_with?("?")
			@coach_message = "Silly question ! Get dressed and go to work !"
		elsif answer.include?("fuck")
			@coach_message = "STAY POLITE OR YOU'LL GET MY FOOT IN YOUR ASS !"
		else
			"You said '#{answer}' ? What the fuck ? I don't care, kid ! Get dressed and run around 100 times !"
	end
	erb :index
end




