clc; clear all;

array = [1 7 2 1
         5 3 0 -1
         -4 12 2 4
         6 3 1 -8];

expected = det(array)

calculated = ZhouK_Lab2(array)