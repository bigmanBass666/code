public class TravelDemo {
  public static void main(String[] args) {
    Travel car = new Car();
    car.setTravelWay("Car");
    System.out.println(car.getTravelWay());
    
    Travel airplane = new Airplane();
    airplane.setTravelWay("Airplane");
    System.out.println(airplane.getTravelWay());
  }
}
