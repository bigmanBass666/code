public class Car implements Travel {
  private String travelWay = "";

  @Override
  public String getTravelWay() {
    return travelWay;
  }

  @Override
  public void setTravelWay(String subWay) {
    travelWay = TRAVEL_WAY + subWay;
  }
}
