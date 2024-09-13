
poles = [1,-1,1j,-1j];

% calling the function with the poles vector
[N, ROC, ROC_zero, S] = region_of_convergence(poles);

disp('no. of unique ROCs:');
disp(N);

disp('regions of convergence (ROC):');
disp(ROC);

disp('ROC zero indicator:');
disp(ROC_zero);

disp('stability vector:');
disp(S);
