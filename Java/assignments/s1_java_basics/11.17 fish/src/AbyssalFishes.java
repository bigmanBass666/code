public class AbyssalFishes extends Fishes {
  private Boolean abyssalWater;

  public Boolean getAbyssalWater() {
    return abyssalWater;
  }

  public void setAbyssalWater(Boolean abyssalWater) {
    this.abyssalWater = abyssalWater;
  }

  @Override
  public String toString() {
    return "FreshWaterFishes [fins=" + super.getFins() + ", gill=" + super.getGill() +", abyssalWater=" + abyssalWater + "]";
  }
}