function [cand,cand_colors] = enforce_certainties(cand,cand_colors,predicates)

has_north = predicates{1};
has_east = predicates{2};
has_south = predicates{3};
has_west = predicates{4};
% enforce compatibility of multiple options that force certain directions
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
% fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
[rows,cols] = size(cand);
for rit = 1:rows
    for cit = 1:cols
        thisr = rit;
        thisc = cit;
        here = cand{thisr,thisc};
        herecolors = cand_colors{thisr,thisc};
        if all(has_north(here)) && thisr > 1
            thereopts = cand{thisr-1,thisc};
            therecolors = cand_colors{thisr-1,thisc};
            ok = has_south(thereopts);
            cand{thisr-1,thisc} = thereopts(ok);
            cand_colors{thisr-1,thisc} = intersect(herecolors,therecolors);
        end
        if all(has_east(here)) && thisc < cols
            thereopts = cand{thisr,thisc+1};
            therecolors = cand_colors{thisr,thisc+1};
            ok = has_west(thereopts);
            cand{thisr,thisc+1} = thereopts(ok);
            cand_colors{thisr,thisc+1} = intersect(herecolors,therecolors);
        end
        if all(has_south(here)) && thisr < rows
            thereopts = cand{thisr+1,thisc};
            therecolors = cand_colors{thisr+1,thisc};
            ok = has_north(thereopts);
            cand{thisr+1,thisc} = thereopts(ok);
            cand_colors{thisr+1,thisc} = intersect(herecolors,therecolors);
        end
        if all(has_west(here)) && thisc > 1
            thereopts = cand{thisr,thisc-1};
            therecolors = cand_colors{thisr,thisc-1};
            ok = has_east(thereopts);
            cand{thisr,thisc-1} = thereopts(ok);
            cand_colors{thisr,thisc-1} = intersect(herecolors,therecolors);
        end
    end
end