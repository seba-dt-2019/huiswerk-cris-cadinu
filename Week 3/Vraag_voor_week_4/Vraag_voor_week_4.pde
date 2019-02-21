size(100, 100);

for (int i = 0;i<5;i++) {
  for (int j = 0;j<5;j++) {
    fill(40 * i);
    rect(10 + (10 * i), 10 * j, 10, 10);
  }
}

//int j = 0;

//while (j < 5) {
//  fill(255);
//  rect(10 + j * 10, 20, 10, 10);
//  println(j);
//  j++;
//}
