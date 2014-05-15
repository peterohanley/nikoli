function [cand,cand_colors] = apply_rules(cand,cand_colors,predicates)
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
entropy = sum(sum(log(optcounts.*coloropts)));
% fprintf('entropy: %f\n',entropy);
oldent = inf;
newent = entropy;
while newent < oldent
    oldent = newent;
    [cand,cand_colors] = enforce_certainties(cand,cand_colors,predicates);
    
    [cand,cand_colors] = check_feasibility(cand,cand_colors,predicates);
    optcounts = cellfun(@numel,cand);
    coloropts = cellfun(@numel,cand_colors);
    newent = sum(sum(log(optcounts.*coloropts)));
end