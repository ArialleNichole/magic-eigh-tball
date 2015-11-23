require "colorize"

@arr = [
	"It is certain".light_green,
	"It is decidedly so".light_green,
	"Without a doubt".light_green,
	"Yes definitely".light_green,
	"You may rely on it".light_green,    
	"As I see it, yes".light_green,
	"Most likely".light_green,
	"Outlook good".light_green,
	"Yes".light_green,
	"Signs point to yes".light_green,
	"Reply hazy try again".light_blue,
	"Ask again later".light_blue,
	"Better not tell you now".light_blue,
	"Cannot predict now".light_blue,
	"Concentrate and ask again".light_blue,
	"Don't count on it".red,
	"My reply is no".red,
	"My sources say no".red,
	"Outlook not so good".red,
	"Very doubtful".red
]

@menu = {
	main: {'1' => {text: 'I want to leave!'}},
	another_menu:
		{'1' => {text: 'I want to play again!'},
		'2' => {text: 'I want to leave!'}}
}

def another_question
	puts " ************ ".light_black
	puts "What would you like to do now?".cyan
	@menu[:another_menu].each {|num, text| puts "#{num}: #{text[:text]}"}
	user_input = gets.strip.to_i
	if user_input == 1
		question
	elsif user_input == 2
		quit
	end
end

def quit
	puts "Are you sure you want to quit? This is pretty fun.".light_red
	user_input = gets.strip.downcase
	if user_input == "yes"
		puts "Ok! see you later, alligator!".green
	elsif user_input == "no"
		question
	else
		puts "What was that?!".light_red
		quit
	end
end

def question
	puts "** The Magic Eight Ball **".light_green
	puts "Please enter a question: ".magenta
	user_input = gets.strip
	puts @arr.sample
	another_question
end

question