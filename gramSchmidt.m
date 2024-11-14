function Q = gramSchmidt(A)
    norms =[];
    norms_matrix = [];
    [m, n] = size(A);
    Q = zeros(m, n);
    for j = 1:n
        v = A(:, j);
        for i = 1:j-1
            v = v - (Q(:, i)' * A(:, j)) * Q(:, i);
        end
        Q(:, j) = v / norm(v);
        norms = [norms,norm(v)];
    end
    for i = 1:m
        norms_matrix = [norms_matrix;norms];
    end
    Q = Q.*norms_matrix;
end

