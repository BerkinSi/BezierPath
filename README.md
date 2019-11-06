# BezierPath
Bezier Path exercise for starters following the below tutorial on appcoda.com.
https://www.appcoda.com/bezier-paths-introduction/

1. When shapes are drawn with UIBezierPath and not CAShapeLayers, the paths should be created inside the draw method.

2. When creating a shape with lines, start by specifying starting point with path.move(to:) function. This function takes a CGPoint(x,y) as an arguement and sets it as paths starting point.

3. After specifying starting point, continue adding lines with path.addLine(to:) function. That way, you'll be drawing a line between your starting point(see above) and the point you've just gave to addLine(to:) function as an arguement.

4. To draw an oval, use UIBezierPath(ovalIn:) function(giving bounds as arguement).

5. To draw a circle, use;
  UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 -  self.frame.size.height/2,
          y: 0.0,
          width: self.frame.size.height,
          height: self.frame.size.height))
 Above call sets the top point of circle, than creates a circle by making its width equal to its height. It really is simple geometry.
 
 6. To create a rounded corner rectangle, use UIBezierPath(roundedRect: self.bounds, cornerRadius: 15.0). If you want to specify some corners to be rounded and some to be not, use byRoundingCorners: [] paramter(see related commit)
 
 7. To create arc, see example below:
   path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2),
                              radius: self.frame.size.height/2,
                              startAngle: CGFloat(180.0).toRadians(),
                              endAngle: CGFloat(0.0).toRadians(),
                              clockwise: true)
                              
  arcCenter is obviously the center of the circle.
  Every parameter really can be explained by its name.
  Only thing that should be remembered is 270 degrees is in ios is at 90 degrees  in normal coordinate system, and vice versa.
  About 270 degrees showing downside, keep in mind that y value increases in as we go down in screens coordinate system, so it actually is expected.

8. Using draw function is not good in terms of performance, so in order to create shapes, we use CAShapeLayer() class.
After creating the Bezier Path, we simpliy create a CAShapeLayer instance and set its path to the paths cgPath

  shapeLayer.path = self.path.cgPath
  
9. Shape layer can be added to view either as mask or sublayer. if it is added as mask, it hides the view. If it is added as sublayer, it does not hide.

10. Two or more shapes can be added to same view as sublayers, their position can be arranged with CAShapeLayer.position property.
  However, you shouldn’t access the frame property, but the bounds property of the sublayer.

  According to the documentation, the bounds property expresses the origin and size of the sublayer in its own coordinate   system.

 
