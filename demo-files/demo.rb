#!/usr/local/bin/ruby
# File: scope_demo.rb
puts self.class
student_name = "Joe"
def rename_student(new_name)
 student_name = new_name
end
rename_student('Joseph')
puts student_name # What is the output?
# Now, rewrite the code to use an instance variable
@student_name = 'joe'
def rename_student(new_name)
 @student_name = new_name
end
rename_student('Joseph')
puts @student_name # What is the output?
# ----------------------------------------------------------
project_path = File.expand_path("..",File.dirname(__FILE__))
http_path = "/"
#svg_dir = "assets/svg"
output_style = :expanded
line_comments = false
cache = true
color_output = false # required for Mixture
require 'sass-globbing'
# SASS core
# ----------------------------------------------------------
# Chrome needs a precision of 7 to round properly
Sass::Script::Number.precision = 7
__END__
