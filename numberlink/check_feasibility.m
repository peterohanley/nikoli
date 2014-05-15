function [cand,cand_colors] = check_feasibility(cand,cand_colors,predicates)
% do sanity checking for all squares
% if a square is try to reach out in a direction, is there a matching reach
% in that direction of the same color?
has_north = predicates{1};
has_east = predicates{2};
has_south = predicates{3};
has_west = predicates{4};
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
% fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
[rows cols] = size(cand);
for rit = 1:rows
    for cit = 1:cols
        here = cand{rit,cit};
        herecolors = cand_colors{rit,cit};
        if numel(here)>1 || numel(herecolors)>1
        northcolors = herecolors;
        eastcolors = herecolors;
        southcolors = herecolors;
        westcolors = herecolors;
        if any(has_north(here)) && rit > 1
            thereopts = cand{rit-1,cit};
            therecolors = cand_colors{rit-1,cit};
            northcolors = intersect(herecolors,therecolors);
%             ok = has_south(thereopts) ...
%                 & ~isempty(northcolors);
%             cand{rit-1,cit} = thereopts(ok);
        end
        if any(has_east(here)) && cit < cols
            thereopts = cand{rit,cit+1};
            therecolors = cand_colors{rit,cit+1};
            eastcolors = intersect(herecolors,therecolors);
%             ok = has_west(thereopts) ...
%                 & ~isempty(eastcolors);
%             cand{rit,cit+1} = thereopts(ok);
        end
        if any(has_south(here)) && rit < cols
            thereopts = cand{rit+1,cit};
            therecolors = cand_colors{rit+1,cit};
            southcolors = intersect(herecolors,therecolors);
%             ok = has_north(thereopts) ...
%                 & ~isempty(southcolors);
%             cand{rit+1,cit} = thereopts(ok);
        end
        if any(has_west(here)) && cit > 1
            thereopts = cand{rit,cit-1};
            therecolors = cand_colors{rit,cit-1};
            westcolors = intersect(herecolors,therecolors);
%             ok = has_east(thereopts) ...
%                 & ~isempty(westcolors);
%             cand{rit,cit-1} = thereopts(ok);
        end
        hereok = true(size(here));
        %this can be made into a straight assignment i think
        if isempty(northcolors)
            hereok = hereok & ~has_north(here);
        end
        if isempty(eastcolors)
            hereok = hereok & ~has_east(here);
        end
        if isempty(southcolors)
            hereok = hereok & ~has_south(here);
        end
        if isempty(westcolors)
            hereok = hereok & ~has_west(here);
        end
        %H,N,E,S,W
        % N = H /\ N'
        % E = H /\ E'
        % S = H /\ S'
        % W = H /\ W'
        % H' = N \/ E \/ S \/ W
        herecolors = union(northcolors,union(eastcolors,...
            union(southcolors,westcolors)));
        here = here(hereok);
        cand{rit,cit} = here;
        cand_colors{rit,cit} = herecolors;
        end
    end
end
