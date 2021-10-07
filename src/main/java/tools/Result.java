package tools;

public class Result {

    private double x;
    private double y;
    private double r;
    private String hit;
    private double time;

    public Result(double x, double y, double r, String hit, double time) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.hit = hit;
        this.time = time;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public double getR() {
        return r;
    }

    public String getHit() {
        return hit;
    }

    public double getTime() {
        return time;
    }
}
