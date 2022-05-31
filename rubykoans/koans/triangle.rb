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
 arr_triangle = [a, b, c]
 arr_triange_uniq = arr_triangle.sort[0..1].uniq 
 raise TriangleError if arr_triange_uniq.length == 1 && arr_triange_uniq[0] < arr_triangle.max 
 raise TriangleError if arr_triangle.any?(&:negative?)
 raise TriangleError if arr_triangle.sum == 0
 return :equilateral if arr_triangle.uniq.length == 1 && arr_triangle.sum != 0
 return :isosceles if arr_triangle.uniq.length == 2
 return :scalene if arr_triangle.uniq.length == 3
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
