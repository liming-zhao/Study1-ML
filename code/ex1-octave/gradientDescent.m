function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    thetaTmp = theta
    m=rows(X(:,1))
    for j = 1: 2
        delta = 0
        for i = 1 : m
           %fprintf('%f\n', thetaTmp(j))?
           %fprintf('Xij=\n')
           %fprintf('%f\n',  X(i,j))
           %fprintf('%f\n',  delta)
           %fprintf('delta=');
           %fprintf('%f\n',  delta);
           %fprintf('delta1=');
           %fprintf('%f\n',  delta1);
           %fprintf('thej=');
           %fprintf('%f\n',  thetaTmp(j) - delta);
           delta = delta + (X(i,:)*thetaTmp - y(i)) * X(i,j);
           %delta1 = alpha * X(i,:) * thetaTmp -y(i);
           fprintf('delta');
           fprintf('%f\n',  delta);
           
 
        endfor
            
        theta(j) = thetaTmp(j) - alpha*delta/m;
    endfor
    
        
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    fprintf('%f\n', theta);
    
end

end
