public class Fishes {
  private String fins; // 鱼鳍
  private String gill; // 鱼鳃

  @Override
  public String toString() {
    return "Fishes [fins=" + fins + ", gill=" + gill + "]";
  }

  public Fishes() {
  }

  public Fishes(String fins, String gill) {
    this.fins = fins;
    this.gill = gill;
  }

  public String getFins() {
    return fins;
  }

  public void setFins(String fins) {
    this.fins = fins;
  }

  public String getGill() {
    return gill;
  }

  public void setGill(String gill) {
    this.gill = gill;
  }
}
