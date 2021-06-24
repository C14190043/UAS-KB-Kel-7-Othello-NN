class backprop {
  int iNodes, hNodes, oNodes, hLayers;
  Matrix[] weights;
  float[][] z;
  float[] y;
  float[][] delta;
  int inc=0;
  
  backprop(Matrix[] weight, int input, int hidden, int output, int hiddenLayers) {
    iNodes = input;
    hNodes = hidden;
    oNodes = output;
    hLayers = hiddenLayers;
    weights = weight;
    delta = new float[1+hLayers][];
    for(int i=0; i<hLayers; i++) {
      delta[i] = new float[hNodes];
    }
    delta[delta.length-1] = new float[oNodes];
    z = new float[60][oNodes];
    for(int i=0; i<60; i++){
      for(int j=0; j<oNodes; j++){
        z[i][j] = 0;
      }
    }
    //z[0][] = ;
    //z[1][] = ;
  }
  
  Matrix[] compute(float[] output) {
    y = output;
    for(int i=1; i<oNodes; i++) {
      delta[delta.length-1][i] = z[inc][i] - y[i];
    }
    for(int i=hLayers; i>=0; i--) {
      for(int j=1; j<hNodes; j++) {
        //delta[i][j] = delta[i+1][j] + weights.toArray();
      }
    }
    inc++;
    return weights;
  }
}
