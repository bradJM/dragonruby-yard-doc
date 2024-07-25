module GTK
  class Geometry

    # Given two rectangle primitives this function will return true or false depending on if the two rectangles intersect or not.
    #
    # An optional final parameter can be passed in representing the tolerence of overlap needed to be considered a true intersection.
    #
    # The default value of tolerance is 0.1 which keeps the function from returning true if only the edges of the rectangles overlap.
    #
    # @param rect_1 [Object] rectangle1
    # @param rect_2 [Object] rectangle2
    # @return [Boolean] return true or false depending on if the two rectangles intersect or not.
    def intersect_rect? rect_1, rect_2, tolerance; end

    # Given two rectangle primitives this function will return true or false depending on if the first rectangle is inside of the second rectangle.
    #
    # @param rect_1 [Object] rectangle1
    # @param rect_2 [Object] rectangle2
    # @return [Boolean] return true or false depending on if the first rectangle is inside of the second rectangle.
    def inside_rect? rect_1, rect_2; end

    # Given a Rectangle this function returns a new rectangle with a scaled size.
    #
    # @param ratio [Float] the ratio by which to scale the rect. A ratio of 2 will double the dimensions of the rect while a ratio of 0.5 will halve its dimensions.
    # @return [Hash] a new rectangle with a scaled size.
    def scale_rect rect, ratio; end

    # Given a Rectangle this function returns a new rectangle with a scaled size.
    #
    # @todo work out how to do named options?
    #
    # @param ratio [Float] the ratio by which to scale the rect. A ratio of 2 will double the dimensions of the rect while a ratio of 0.5 will halve its dimensions.
    # @return [Hash] a new rectangle with a scaled size.
    def scale_rect_extended opts; end

    # @param start_point [Object] start point
    # @param end_point [Object] end point
    # @return [Float] Returns an angle in degrees from the start_point to the end_point (if you want the value in radians call .to_radians on the value returned).
    def angle start_point, end_point; end

    # @param start_point [Object] start point
    # @param end_point [Object] end point
    # @return [Float] Returns an angle in degrees from the end_point to the start_point (if you want the value in radians call .to_radians on the value returned).
    def angle_from start_point, end_point; end

    # @param start_point [Object] start point
    # @param end_point [Object] end point
    # @return [Float] Returns an angle in degrees to the end_point from the start_point (if you want the value in radians, you can call .to_radians on the value returned):
    def angle_to start_point, end_point; end

    # Returns 1 or -1 depending on which direction the angle needs to turn to reach the target_angle most efficiently.
    #
    # The angles are assumed to be in degrees.
    #
    # 1 means turn clockwise, and -1 means turn counter-clockwise.
    #
    # @param angle [Numeric]
    # @param target_angle [Numeric]
    # @return [Integer] Returns 1 or -1 depending on which direction the angle needs to turn to reach the target_angle most efficiently.
    #                   1 means turn clockwise, and -1 means turn counter-clockwise.
    def angle_turn_direction angle, target_angle; end

    # Given an angle and a target_angle, this function will return the smallest angle delta between the two angles.
    #
    # The angles are assumed to be in degrees.
    #
    # @param angle [Numeric]
    # @param target_angle [Numeric]
    # @return [Float] Given an angle and a target_angle, this function will return the smallest angle delta between the two angles.
    def angle_delta angle, target_angle; end

    # Given a test_angle, target_angle, and range (all in degrees), this function will return true if the test_angle is within the range of the target_angle on either side.
    #
    # The range is the number of degrees from the target_angle that the test_angle can be within to return true.
    #
    # @param test_angle [Float]
    # @param target_angle [Float]
    # @param range [Float]
    # @return [Boolean] return true if the test_angle is within the range of the target_angle on either side.
    def angle_within_range test_angle, target_angle, range; end

    # Returns the distance between two points
    #
    # @param p1 [Object] point 1
    # @param p2 [Object] point 2
    # @return [Float] Returns the distance between p1 and p2
    def distance p1, p2; end

    # Returns true if a point is inside of a circle defined as a center point and radius.
    #
    # @param circle_center [Object]
    # @param circle_radius [Numeric]
    # @return [Boolean] Returns true if a point is inside of a circle defined as a center point and radius.
    def point_inside_circle? circle_center, circle_radius; end

    # Given a target rect and a reference rect, the target rect is centered inside the reference rect (a new rect is returned).
    #
    # @param target_rect [Object]
    # @param reference_rect [Object]
    # @return [Hash] centered rect
    def center_inside_rect target_rect, reference_rect; end

    # Given a point and a line, ray_test returns one of the following symbols based on the location of the point relative to the line: :left, :right, :on
    #
    # @param point [Object]
    # @param line [Object]
    # @return [Symbol] returns one of the following symbols based on the location of the point relative to the line: :left, :right, :on
    def ray_test point, line; end

    # Given a line, this function returns a Hash with x and y keys representing a normalized representation of the rise and run of the line.
    #
    # @param line [Object]
    # @return [Hash] returns a Hash with x and y keys representing a normalized representation of the rise and run of the line.
    def line_rise_run line; end

    # Given two lines (:x, :y, :x2, :y2), this function returns point of intersection if the line segments intersect.
    #
    # If the line segments do not intersect, nil is returned.
    #
    # If you want the lines to be treated as infinite lines, use #ray_intersect.
    #
    # @param line_1 [Object]
    # @param line_2 [Object]
    # @rerturn [Hash,nil] returns point of intersection if the line segments intersect, nil if not
    def line_intersect line_1, line_2; end

    # Given two lines (:x, :y, :x2, :y2), this function returns point of intersection if the ray (infinite line) intersect.
    #
    # If the lines are parallel, nil is returned.
    #
    # If you do not want the lines to be treated as infinite lines, use line_intersect.
    #
    # @param line_1 [Object]
    # @param line_2 [Object]
    # @rerturn [Hash,nil] returns point of intersection if the ray(infinite line) intersect, nil if not
    def ray_intersect line_1, line_2; end

    # Given a point and an angle in degrees, a new point is returned that is rotated around the origin by the degrees amount.
    #
    # An optional third argument can be provided to rotate the angle around a point other than the origin.
    #
    # @param point [Object]
    # @param angle [Numeric]
    # @return [Hash] a new point is returned that is rotated around the origin by the degrees amount.
    def rotate_point point, angle; end

    # Given a rect and a collection of rects, find_intersect_rect returns the first rect that intersects with the the first parameter.
    #
    # :anchor_x, and anchor_y is taken into consideration if the objects respond to these methods.
    #
    # @param needle [Object] the rect you'd like to check for intersection on
    # @param haystack [Array] the collection of rects you'd like to check against
    # @return [Hash,nil] returns the first rect that intersects with the the first parameter. nil if either parameter is nil.
    def find_intersect_rect needle, haystack; end

    # Given a rect and a collection of rects, find_intersect_rect returns the first rect that intersects with the the first parameter.
    #
    # :anchor_x, and anchor_y is taken into consideration if the objects respond to these methods.
    #
    # @param needle [Object] the rect you'd like to check for intersection on
    # @param haystack [Array] the collection of rects you'd like to check against
    # @return [Hash] returns the first rect that intersects with the the first parameter. Returns an empty Array if either parameter is nil.
    def find_all_intersect_rect needle, haystack; end


    # This is a faster collision algorithm for determining if a rectangle intersects any rectangle in an array.
    #
    # In order to use find_intersect_rect_quad_tree, you must first generate a quad tree data structure using create_quad_tree
    #
    # Use this function if find_intersect_rect isn’t fast enough.
    #
    # @param needle [Object] the rect you'd like to check for intersection on
    # @param quad_tree [Object] the generated quad_tree created with the rects you'd like to check against
    # @return [Hash,nil] returns the first rect that intersects with the the first parameter. nil if either parameter is nil.
    def find_intersect_rect_quad_tree needle, quad_tree; end

    # This is a faster collision algorithm for determining if a rectangle intersects any rectangle in an array.
    #
    # In order to use find_intersect_rect_quad_tree, you must first generate a quad tree data structure using create_quad_tree
    #
    # Use this function if find_intersect_rect isn’t fast enough.
    #
    # @param needle [Object] the rect you'd like to check for intersection on
    # @param quad_tree [Object] the generated quad_tree created with the rects you'd like to check against
    # @return [Array] returns an array of Rects from the quad_tree that intersect with the the first parameter.
    def find_all_intersect_rect_quad_tree needle, quad_tree; end

    # @param line [Object]
    # @return [Numeric] Given a line, this function will return the angle of the line in degrees.
    def line_angle line; end

    # Given two Hashes with x and y keys (or Objects that respond to x and y), this function will return the dot product of the two vectors.
    #
    # @param vec_1 [Object]
    # @param vec_2 [Object]
    # @return [Numeric] return the dot product of the two vectors.
    def vec2_dot_product vec_1, vec_2; end

    # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return a Hash with x and y keys that represents the vector normalized.
    #
    # @param vec_1 [Object]
    # @param vec_2 [Object]
    # @return [Hash] return a Hash with x and y keys that represents the vector normalized.
    def vec2_normalize vec2; end

    # Given an Object with x, y, w, h, (and optionally anchor_x, anchor_y), this function returns a Hash in the following form.
    #
    # ```
    # {
    #   x: ...,
    #   y: ...,
    #   w: ...,
    #   h: ...,
    #   center: {
    #     x: ...,
    #     y: ...,
    #   }
    # }
    # ```
    #
    # @param rect [Object] rect
    # @return [Hash]
    def rect_props rect; end

    # Given a line, this function will return a Hash with x and y keys that represents the vector of the line.
    #
    # @param line [Object]
    # @return [Hash] a Hash with x and y keys that represents the vector of the line.
    def line_vec2 line; end

    # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return the magnitude of the vector.
    #
    # @param vec2 [Object]
    # @return [Numeric] the magnitude of the vector.
    def vec2_magnitude vec2; end

    # Given two Hashes with x and y keys (or Objects that respond to x and y), this function will return the distance squared between the two points.
    #
    # This is useful when you only want to compare distances, and don’t need the actual distance.
    #
    # @param vec_1 [Object]
    # @param vec_2 [Object]
    # @return [Numeric] the distance squared between the two points
    def distance_squared vec_1, vec_2; end

    # Given a Hash with x and y keys (or an Object that responds to x and y), this function will return a Hash with x and y keys that represents the normal of the vector.
    #
    # @param vec2 [Object]
    # @return [Hash] a Hash with x and y keys that represents the normal of the vector.
    def vec2_normal vec2; end

    # Check whether a circle intersects a line.
    #
    # @param circle [Object] a Hash with x, y, and radius keys (or an Object that responds to x, y, and radius).
    # @param line [Object] a Hash with x, y, x2, and y2 keys (or an Object that responds to x, y, x2, and y2).
    # @return [Boolean] true if the circle intersects the line, and false if it does not.
    def circle_intersect_line? circle, line; end

    # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).
    # @param vec2 [Object] a Hash with x and y keys (or an Object that responds to x and y).
    # @return [Hash] a Hash with x and y keys that represents the normal of the line relative to the point provided.
    def line_normal line, vec2; end

    # @param point [Object] a point (a Hash with x and y keys, or an Object that responds to x and y).
    # @param line [Object] a line (a Hash with x, y, x2, and y2 keys, or an Object that responds to x, y, x2, and y2).
    # @return [Boolean] This function will return true if the point is on the line, and false if it is not.
    def point_on_line? point, line; end

    # Given an Array of rects, returns a Hash of collisions.
    #
    # Each entry in the return Hash maps two rects from the input Array that intersect.
    #
    # Note that in the event of an intersection of rects A and B, the returned Hash will contain two entries: {A=>B,B=>A}
    #
    # @param rects [Array] an array of rects
    # @return [Hash] collisions of rects within array.
    def find_collisions rects; end

    # todo
    def rect_navigate opts; end

    # Generates a quad tree from an array of rectangles. See #find_intersect_rect_quad_tree for usage.
    #
    # @param rects [Array] array of rects to form a quad_tree
    # @return [Object] quad_tree to be used with #find_intersect_rect_quad_tree and #find_all_intersect_rect_quad_tree
    def create_quad_tree rects; end
  end
end
