public class FreshWaterFishes extends Fishes {
  private Boolean freshWater;

  public Boolean getFreshWater() {
    return freshWater;
  }

  public void setFreshWater(Boolean freshWater) {
    this.freshWater = freshWater;
  }

  @Override
  public String toString() {
    return "FreshWaterFishes [fins=" + super.getFins() + ", gill=" + super.getGill() +", freshWater=" + freshWater + "]";
  }
}