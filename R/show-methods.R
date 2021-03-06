setMethod("show", "savProject", function(object) cat(class(object), "instance with", 
                                                     object@layout@lanecount, "lanes,", 
                                                     object@cycles, "total cycles, and",
                                                     length(reads(object)), "sequence reads (",
                                                     object@directions, "sequencing and ",
                                                     length(reads(object))-object@directions, "indexed reads ).\n",
                                                     if(object@layout@tilenamingconvention != "") { 
                                                       paste("Indicated tile naming convention: ",
                                                             object@layout@tilenamingconvention, ".\n", sep="")} else
                                                               {"Default naming convention.\n"},
                                                     "With InterOp data for:", 
                                                     paste(" ", names(object@parsedData), 
                                                           " (", 
                                                           sapply(names(object@parsedData), FUN = function(x) { 
                                                             x <- new(x); return(x@accessor)
                                                             }), ")\n", sep = ""), "\n")
)