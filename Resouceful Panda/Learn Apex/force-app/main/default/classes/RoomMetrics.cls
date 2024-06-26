public class RoomMetrics {
    Decimal width;
    Decimal height;
    public Decimal calculateArea(Decimal width, Decimal height) {
        return (width*height).setScale(1);
    }
    public Decimal calculatePerimeter(Decimal width, Decimal height) {
        return (2*(width+height)).setScale(1);
    }
    public Decimal compareAreas(Decimal width, Decimal height) {
        Decimal area=calculateArea(width,height);
        Decimal perimeter=calculatePerimeter(width,height);
        return Math.max(area,perimeter); 
    }
}