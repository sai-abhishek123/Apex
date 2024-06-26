public class ShapeIdentifier { 
    public void shape_checker (Decimal height, Decimal width) {
        String returner;
        if (height == width) {
            returner = 'The shape with width '+width+' and height'+height+' is a square';
            System.debug(returner);
        }
        else {
            returner = 'The shape with width '+width+' and height'+height+' is a rectangle';
            System.debug(returner);
        }
    }
}