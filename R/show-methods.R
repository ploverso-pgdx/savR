setMethod("show", "savProject", function(object) cat(class(object), "instance with", 
                                                     object@layout@lanecount, "lanes,", 
                                                     object@cycles, "total cycles and", 
                                                     object@directions, "sequencing runs." ))