f = [1 3 2 0 4;
     1 0 3 2 3;
     0 4 1 0 5;
     2 3 2 1 4;
     3 1 0 4 2];
w = [-1 0 1;
     -2 0 2;
     -1 0 1];
result = conv2(f,w,'same')
