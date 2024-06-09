public class Crucian extends FreshWaterFishes {
  private String crucian;

  @Override
  public String toString() {
    return "Crucian [fins=" + super.getFins() + ", gill=" + super.getGill() + ", abyssalWater=" + super.getFreshWater()
        + ", crucian" + crucian + "]";
  }

  public String getCrucian() {
    return crucian;
  }

  public void setCrucian(String crucian) {
    this.crucian = crucian;
  }
}
