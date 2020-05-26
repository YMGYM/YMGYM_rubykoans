# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	
	a, b, c = [a, b, c].sort
	
	if c >= (a + b)
		raise TriangleError
	elsif a <= 0 || b <= 0 || c <= 0
		raise TriangleError
	else
		cnt = 0
		cnt += 1 if a == b
		cnt += 1 if b == c
		cnt += 1 if a == c
	end
		
	if cnt == 3
		return :equilateral
	elsif cnt == 1
		return :isosceles
	else
		return :scalene
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
