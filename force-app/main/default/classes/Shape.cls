public virtual class Shape {
    public Integer area;
    public Shape(Integer area) {
        this.area = area;
    }
        public void calculateArea() {
        System.debug('Area is ' + area);
    }
}