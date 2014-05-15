%numberlink
ORANGE = 1;
GREEN = 2;
RED = 3;
YELLOW = 4;
BLUE = 5;
CYAN = 6;
% puzzle = [...
%     2 0 0 0 4
%     0 0 3 0 0
%     0 0 0 4 0
%     0 5 0 3 0
%     0 2 0 0 5];
% puzzle = [...
%     0 0 0 0 1 2 3
%     0 0 0 0 0 0 0
%     0 0 4 0 0 4 0
%     0 2 0 0 0 0 0
%     0 5 3 6 0 0 0
%     0 0 0 0 0 5 0
%     0 0 1 6 0 0 0];
% puzzle = [...
%     0 0 0 0 0 10 0 0 0 0 11 0 0 0 0 0 0 15
%     0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 14 0 0
%     0 0 3 0 0 9 0 0 0 0 0 12 0 0 0 0 15 0
%     0 0 0 2 0 0 0 0 0 5 0 0 0 0 0 11 16 0
%     0 0 0 0 0 0 8 0 0 8 0 0 0 0 0 10 0 0
%     0 0 0 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0
%     0 4 0 0 0 0 0 0 7 0 0 9 0 0 4 0 0 0
%     0 2 0 0 0 0 0 0 0 0 0 0 0 13 0 13 0 0
%     0 0 3 0 0 5 6 7 6 16 0 0 0 0 0 0 0 0
%     1 0 0 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0];
% puzzle = [...
%     0 0 0 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 0 0 0 0 2 0 0
%     0 0 0 0 0 0 0 0 0 5 0 0
%     0 0 0 0 1 0 0 1 4 0 0 0
%     0 0 0 0 0 0 0 0 0 0 0 3
%     0 0 0 0 0 0 0 0 0 0 0 6
%     0 0 4 0 2 0 0 3 0 0 0 0
%     7 0 5 0 0 0 0 0 0 8 0 0
%     8 0 0 0 0 0 0 0 0 0 0 0
%     7 0 0 0 0 0 0 0 0 0 0 0
%     6 0 0 0 0 0 0 0 0 0 0 0];
% puzzle = [...
%     0 0 0 0 0 0 0 0 0 0 0 7
%     0 0 0 0 0 0 1 0 0 0 0 0
%     0 0 2 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 0 5 0 6 0 0 0
%     0 0 0 8 0 0 0 4 0 0 0 0
%     0 0 0 0 0 0 3 8 0 0 0 0
%     0 0 1 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 6 0 0 0 0 0 0
%     0 0 0 0 0 4 0 0 0 0 7 0
%     0 5 0 0 0 0 0 0 0 0 2 0
%     3 0 0 0 0 0 0 0 0 0 0 0];
% puzzle = [... solved by link checker
%     1 0 0 0 0 0 0 1
%     2 0 0 0 0 0 5 0
%     0 0 0 0 0 0 3 0
%     0 3 0 4 0 0 6 0
%     0 0 0 0 0 0 5 0
%     6 4 0 0 2 0 0 0
%     0 7 0 0 0 0 7 0
%     0 0 0 0 0 0 0 0];
% puzzle = [... color checker takes this one out
%     0 0 0 0 0 0 0 1
%     0 2 0 0 0 0 0 0
%     0 0 6 5 0 0 3 0
%     4 0 0 0 0 0 0 0
%     0 0 0 1 6 0 0 0
%     0 5 0 0 0 0 0 0
%     0 0 0 0 0 4 0 0
%     3 0 0 0 0 0 0 2];
% puzzle = [...
%     1 0 0 0 0 0 0 0 0 0
%     2 0 0 0 0 0 0 0 4 0
%     1 0 0 0 2 0 0 0 0 0
%     0 0 4 0 6 0 0 5 0 0
%     0 0 0 0 0 0 0 0 0 0
%     0 0 0 0 0 0 0 0 0 0
%     0 0 0 3 0 0 0 0 0 5
%     0 0 0 0 0 7 3 7 0 0
%     0 0 0 0 0 0 0 0 6 0
%     0 0 0 0 0 0 0 0 0 0];
puzzle = [... solving, color, and link checking are not enough
    3 0 0 0 0 0 0 0 0
    0 0 2 5 0 0 0 0 0
    0 0 0 0 0 0 4 0 0
    0 0 1 0 0 0 6 0 0
    0 0 0 5 0 0 0 0 0
    0 0 0 2 0 0 0 0 0
    0 0 0 0 0 0 0 0 0
    0 6 0 0 0 0 1 3 0
    0 0 0 0 0 0 0 0 4];


colornum = max(max(puzzle));
colors = intersect(1:colornum,unique(unique(puzzle)));
tag_count = nnz(colors);

%box options
%???????,?,?,?
%+0+
%3 1
%+2+
NORTH = 1;
EAST = 2;
SOUTH = 4;
WEST = 8;
NORTHEAST = bitor(NORTH,EAST);
SOUTHEAST = bitor(SOUTH,EAST);
SOUTHWEST = bitor(SOUTH,WEST);
NORTHWEST = bitor(NORTH,WEST);
NORTHSOUTH = bitor(NORTH,SOUTH);
EASTWEST = bitor(EAST,WEST);
reachnorth = [NORTH NORTHEAST NORTHWEST NORTHSOUTH];
reacheast = [EAST NORTHEAST SOUTHEAST EASTWEST];
reachsouth = [SOUTH SOUTHEAST SOUTHWEST NORTHSOUTH];
reachwest = [WEST NORTHWEST SOUTHWEST EASTWEST];

%does a work (direction) of b?
has_dir = @(d) @(x) ~~bitand(d,x);
has_north = has_dir(NORTH);
has_east = has_dir(EAST);
has_south = has_dir(SOUTH);
has_west = has_dir(WEST);
all_have_north = @(x) all(has_north(x));
all_have_east = @(x) all(has_east(x));
all_have_south = @(x) all(has_south(x));
all_have_west = @(x) all(has_west(x));
any_have_north = @(x) any(has_north(x));
any_have_east = @(x) any(has_east(x));
any_have_south = @(x) any(has_south(x));
any_have_west = @(x) any(has_west(x));
north = @(a,b)  has_south(a) && has_north(b);
east = @(a,b) has_west(a) && has_east(b);
south = @(a,b) has_north(a) && has_south(b);
west = @(a,b) has_east(a) && has_west(b);
predicates = {has_north,has_east,has_south,has_west};
%% generate totally dumb initial option
linkoptions = [ NORTHEAST SOUTHEAST SOUTHWEST NORTHWEST...
    NORTHSOUTH EASTWEST];
endoptions = [NORTH EAST SOUTH WEST];
cand = cell(size(puzzle));
cand_colors = cell(size(puzzle));
[rows cols] = size(puzzle);
for rit = 1:rows
    for cit = 1:cols
        if puzzle(rit,cit)==0
            cand{rit,cit} = linkoptions;
            cand_colors{rit,cit} = colors;
        else
            cand{rit,cit} = endoptions;
            cand_colors{rit,cit} = [puzzle(rit,cit)];
        end
    end
end

%% do "where is this square" checking
%do edges of map
%north edge
for rit = 1
    for cit = 1:cols
        hereopts = cand{rit,cit};
        ok = ~has_north(hereopts);
        cand{rit,cit} = hereopts(ok);
    end
end
%south edge
for rit = rows
    for cit = 1:cols
        hereopts = cand{rit,cit};
        ok = ~has_south(hereopts);
        cand{rit,cit} = hereopts(ok);
    end
end
%east edge
for rit = 1:rows
    for cit = cols
        hereopts = cand{rit,cit};
        ok = ~has_east(hereopts);
        cand{rit,cit} = hereopts(ok);
    end
end
%west edge
for rit = 1:rows
    for cit = 1
        hereopts = cand{rit,cit};
        ok = ~has_west(hereopts);
        cand{rit,cit} = hereopts(ok);
    end
end
%% enforce compatibility of single options
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
[r,c] = find(optcounts==1);
for it = 1:numel(r);
    thisr = r(it);
    thisc = c(it);
    here = cand{thisr,thisc};
    if has_north(here) && thisr > 1
        thereopts = cand{thisr-1,thisc};
        ok = has_south(thereopts);
        cand{thisr-1,thisc} = thereopts(ok);
    end
    if has_east(here) && thisc < cols
        thereopts = cand{thisr,thisc+1};
        ok = has_west(thereopts);
        cand{thisr,thisc+1} = thereopts(ok);
    end
    if has_south(here) && thisr < rows
        thereopts = cand{thisr+1,thisc};
        ok = has_north(thereopts);
        cand{thisr+1,thisc} = thereopts(ok);
    end
    if has_west(here) && thisc > 1
        thereopts = cand{thisr,thisc-1};
        ok = has_east(thereopts);
        cand{thisr,thisc-1} = thereopts(ok);
    end
end
%% do solving functions
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
[cand,cand_colors] = apply_rules(cand,cand_colors,predicates);
%% check that all colors are actually potentially possible
% only check in squares that are we can expect to find something
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
locs = ~adjacents(puzzle~=0);
while ~(nnz(locs)==0)
    [rlocs,clocs] = find(locs);
    for lit = 1:numel(rlocs)
        rit = rlocs(lit);
        cit = clocs(lit);
        locs(rit,cit) = false;
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        entropy = sum(sum(log(optcounts.*coloropts)));
        colorok = true(size(cand_colors{rit,cit}));
        if numel(colorok)~=1
            rawcand = cell(size(cand));
            rawcolors = cell(size(cand));
            for oit = 1:numel(colorok)
                branch_cand_colors = cand_colors;
                branch_cand_colors{rit,cit} = cand_colors{rit,cit}(oit);
                [branch_cand,branch_cand_colors] =...
                    apply_rules(cand,branch_cand_colors,predicates);
                branchcombos = prod(prod(cellfun(@numel,branch_cand)...
                    .*cellfun(@numel,branch_cand_colors)));
                colorok(oit) = branchcombos > 0;
                if branchcombos == 1
                    cand = branch_cand;
                    cand_colors = branch_cand_colors;
                    break
                elseif colorok(oit)
                    rawcand = cellfun(@union,rawcand,branch_cand,'UniformOutput',false);
                    rawcolors = cellfun(@union,rawcolors,branch_cand_colors,'UniformOutput',false);
                end
            end
            if branchcombos ~= 1
                cand = cellfun(@intersect,cand,rawcand,'UniformOutput',false);
                cand_colors = cellfun(@intersect,cand_colors,rawcolors,'UniformOutput',false);
            end
        end
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        newentropy = sum(sum(log(optcounts.*coloropts)));
        if newentropy < entropy
            here = false(size(puzzle));
            here(rit,cit)=true;
            locs = locs | adjacents(here);
        end
        %         optcounts = cellfun(@numel,cand);
        %         coloropts = cellfun(@numel,cand_colors);
        %         fprintf('rit: %d cit:%d entropy: %f\n',rit,cit,sum(sum(log(optcounts.*coloropts))));
    end
    locs
end

%% check that all link types are actually potentially possible
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
entropy = sum(sum(log(optcounts.*coloropts)));
fprintf('entropy: %f\n',entropy);
locs = adjacents(puzzle~=0);
while ~(nnz(locs)==0)
    [rlocs,clocs] = find(locs);
    for lit = 1:numel(rlocs)
        rit = rlocs(lit);
        cit = clocs(lit);
        locs(rit,cit) = false;
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        entropy = sum(sum(log(optcounts.*coloropts)));
        linkok = true(size(cand{rit,cit}));
        if numel(linkok)~=1
            rawcand = cell(size(cand));
            rawcolors = cell(size(cand));
            for oit = 1:numel(linkok)
                branch_cand = cand;
                branch_cand{rit,cit} = cand{rit,cit}(oit);
                [branch_cand,branch_cand_colors] =...
                    apply_rules(branch_cand,cand_colors,predicates);
                branchcombos = prod(prod(cellfun(@numel,branch_cand)...
                    .*cellfun(@numel,branch_cand_colors)));
                linkok(oit) = branchcombos>0;
                if branchcombos == 1
                    cand = branch_cand;
                    cand_colors = branch_cand_colors;
                    break
                elseif linkok(oit)
                    rawcand = cellfun(@union,rawcand,branch_cand,'UniformOutput',false);
                    rawcolors = cellfun(@union,rawcolors,branch_cand_colors,'UniformOutput',false);
                end
            end
            if branchcombos ~= 1
                cand = cellfun(@intersect,cand,rawcand,'UniformOutput',false);
                cand_colors = cellfun(@intersect,cand_colors,rawcolors,'UniformOutput',false);
            end
        end
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        newentropy = sum(sum(log(optcounts.*coloropts)));
        if newentropy < entropy
            here = false(size(puzzle));
            here(rit,cit)=true;
            locs = locs | adjacents(here);
        end
    end
end
%% try combinations of endpoint directions, to check for incompatibilities
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
logprob = log(optcounts.*coloropts);
entropy = sum(sum(logprob));
fprintf('entropy: %f\n',entropy);
locs = puzzle ~= 0;
[tagr,tagc] = find(locs);
for tagit = 1:numel(tagr)
    rit = tagr(tagit);
    cit = tagc(tagit);
    for oit = 2:numel(tagr)
        orit = tagr(oit);
        ocit = tagc(oit);
        for opt_a_it = 1:numel(cand{rit,cit})
            for opt_b_it = 1:numel(cand{orit,ocit})
                branch_cand = cand;
                branch_cand{rit,cit} = cand{rit,cit}(opt_a_it);
                branch_cand{orit,ocit} = cand{orit,ocit}(opt_b_it);
                [branch_cand,branch_cand_colors] =...
                    apply_rules(branch_cand,cand_colors,predicates);
                branchcombos = prod(prod(cellfun(@numel,branch_cand)...
                    .*cellfun(@numel,branch_cand_colors)));
                if branchcombos == 0
                    fprintf('tags: %d,%d %d,%d don''t work\n',tagit,opt_a_it,oit,opt_b_it);
                elseif branchcombos==1
                    fprintf('tags: %d,%d %d,%d solves\n',tagit,opt_a_it,oit,opt_b_it);
                end
            end
        end
    end
end


%% combine color and link type
% for each square, generate every possible link and color and check it's
% not obviously wrong.
%TODO this doesn't take into account pre-existing cand_link_colors, remove
%that case from it
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
entropy = sum(sum(log(optcounts.*coloropts)));
fprintf('entropy: %f\n',entropy);
% cand_link_color = cell(size(cand));
% locs = adjacents(puzzle~=0);
% while ~(nnz(locs)==0)
    [rlocs,clocs] = find(locs);
    for lit = 1:numel(rlocs)
        rit = rlocs(lit);
        cit = clocs(lit);
        locs(rit,cit) = false;
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        comboopts = cellfun(@nnz,cand_link_color);
        dumboptcount = optcounts.*coloropts;
        dumboptcount(comboopts ~= 0) = 0;
        entropy = sum(sum(log(dumboptcount+comboopts)));
        if isempty(cand_link_color{rit,cit})
            here_links = false(size(linkoptions));
            here_links(cand{rit,cit}) = true;
            here_colors = false(size(colors));
            here_colors(cand_colors{rit,cit}) = true;
            link_color_ok = false(colornum,max([endoptions linkoptions]));
            color_ok = link_color_ok;
            link_ok = link_color_ok;
            %link_color_ok = (here_colors+0)*here_links;
        else
            link_color_ok = cand_link_color{rit,cit};
        end
        %we can generate linkok more easily
        %for every color, run on that color -> set those rows
        %for every link type, run on that link type -> set those cols
        if nnz(link_color_ok)~=1
            rawcand = cell(size(cand));
            rawcolors = cell(size(cand));
            [colorinds,linkinds] = find(link_color_ok);
            for colorit = cand_colors{rit,cit}'
                branch_cand = cand;
                branch_cand_colors = cand_colors;
                branch_cand_colors{rit,cit} = colorit;
                [branch_cand,branch_cand_colors] =...
                    apply_rules(branch_cand,branch_cand_colors,predicates);
                branchcombos = prod(prod(cellfun(@numel,branch_cand)...
                    .*cellfun(@numel,branch_cand_colors)));
                color_ok(colorit,branch_cand{rit,cit}') = branchcombos>0;
                %link_color_ok(colorit,linkit) = branchcombos>0;
                if branchcombos == 1
                    cand = branch_cand;
                    cand_colors = branch_cand_colors;
                    break
                elseif branchcombos>0
                    rawcand = cellfun(@union,rawcand,branch_cand,'UniformOutput',false);
                    rawcolors = cellfun(@union,rawcolors,branch_cand_colors,'UniformOutput',false);
                end
            end
            for linkit = cand{rit,cit}'
                branch_cand = cand;
                branch_cand_colors = cand_colors;
                branch_cand{rit,cit} = linkit;
                [branch_cand,branch_cand_colors] =...
                    apply_rules(branch_cand,branch_cand_colors,predicates);
                branchcombos = prod(prod(cellfun(@numel,branch_cand)...
                    .*cellfun(@numel,branch_cand_colors)));
                link_ok(branch_cand_colors{rit,cit},linkit) = branchcombos>0;
                %link_color_ok(colorit,linkit) = branchcombos>0;
                if branchcombos == 1
                    cand = branch_cand;
                    cand_colors = branch_cand_colors;
                    break
                elseif branchcombos>0
                    rawcand = cellfun(@union,rawcand,branch_cand,'UniformOutput',false);
                    rawcolors = cellfun(@union,rawcolors,branch_cand_colors,'UniformOutput',false);
                end
            end
        end
        if branchcombos ~= 1
            cand = cellfun(@intersect,cand,rawcand,'UniformOutput',false);
            cand_colors = cellfun(@intersect,cand_colors,rawcolors,'UniformOutput',false);
        end
        link_color_ok = color_ok & link_ok;
        cand_link_color{rit,cit} = link_color_ok;
        optcounts = cellfun(@numel,cand);
        coloropts = cellfun(@numel,cand_colors);
        comboopts = cellfun(@nnz,cand_link_color);
        dumboptcount = optcounts.*coloropts;
        dumboptcount(comboopts ~= 0) = 0;
        newentropy = sum(sum(log(dumboptcount+comboopts)));
        if newentropy < entropy
            here = false(size(puzzle));
            here(rit,cit)=true;
            locs = locs | adjacents(here);
        end
    end
% end
%% propagate refined color/link constraints
% if a square can be only certain link/color combos, this means adjacent
% squares are also constricted.
% if a reaches north with colors 1,2,3, and b can reach south with colors
% x,y,z, a's north-reaching and b's south-reaching colors can be updated
% to intersect([1 2 3],[x y z])

%if a has only south-reaching links b must reach north, and a and b's
%colors become the intersection of a's south-reaching colors and b's
%north-reaching colors
%horizontal adjacencies
changes = false(size(cand_link_color));
for rit = 1:rows
    for cit = 1:(cols-1)
        westone = cand_link_color{rit,cit};
        eastone = cand_link_color{rit,cit+1};
        %find west-reachers of east and east-reachers of west
        eastcolors = eastone(:,reachwest);
        all_east = nnz(eastcolors)==nnz(eastone);
        westcolors = westone(:,reacheast);
        all_west = nnz(westcolors)==nnz(westone);
        if xor(all_east,all_west)
            disp([rit cit])
        end
        matchcolors = any(eastcolors,2) & any(westcolors,2);
        eastone(~matchcolors,reachwest) = false;
        westone(~matchcolors,reacheast) = false;
        changed = any(any((eastone ~= cand_link_color{rit,cit+1}) | ...
            (westone ~= cand_link_color{rit,cit})));
        changes(rit,cit) = changes(rit,cit) | changed;
        changes(rit,cit+1) = changes(rit,cit+1) | changed;
        cand_link_color{rit,cit} = westone;
        cand_link_color{rit,cit+1} = eastone;
    end
end
%
%vertical
for rit = 1:(rows-1)
    for cit = 1:cols
        northone = cand_link_color{rit,cit};
        southone = cand_link_color{rit+1,cit};
        
        northcolors = northone(:,reachsouth);
        all_south = nnz(northcolors) == nnz(northone);
        southcolors = southone(:,reachnorth);
        all_north = nnz(southcolors) == nnz(southone);
        if xor(all_north,all_south)
            disp([rit cit])
        end
        matchcolors = any(southcolors,2) & any(northcolors,2);
        northone(~matchcolors,reachsouth) = false;
        southone(~matchcolors,reachnorth) = false;
        changed = any(any((northone ~= cand_link_color{rit,cit}) | ...
            (southone ~= cand_link_color{rit+1,cit})));
        changes(rit,cit) = changes(rit,cit) | changed;
        changes(rit+1,cit) = changes(rit+1,cit) | changed;
        cand_link_color{rit,cit} = northone;
        cand_link_color{rit+1,cit} = southone;
    end
end
%if a square reaches in two directions with some color, both must reach
%back.
%% combine the link/color back to link? color?
cand = cellfun(@(x) find(any(x)),cand_link_color,'UniformOutput',false);
cand_colors = cellfun(@(x) find(any(x,2)),cand_link_color,'UniformOutput',false);
%% start combining candidates
% allows us to store more specific possibilities
% a metacandidate has its coverage (matrix of booleans) and then a list of
% options. each option is a candidates, but stores only the squares the
% metacandidate covers and has only one option per square.
%% print out current state
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
comboopts = cellfun(@nnz,cand_link_color);
dumboptcount = optcounts.*coloropts;
dumboptcount(comboopts ~= 0) = 0;
entropy = sum(sum(log(dumboptcount+comboopts)));
entropy = sum(sum(log(cellfun(@nnz,cand_link_color))));
fprintf('entropy: %f\n',entropy);
%matlab isn't playing nice with the unicode box-drawing characters
cla
hold on
axis([0 cols+1 0 rows+1])
line_east = [0 0;0 .5];
line_north = [0 .5;0 0];
line_west = [0 0;0 -.5];
line_south = [0 -.5;0 0];
tagcolors = [1 .5 0;
    0 1 0;
    1 0 0;
    0 1 1;
    0 0 1;
    0 .5 1];
tagcolors = rand(colornum,3);
tagcolors = jet(colornum);
for rit = 1:rows
    for cit = 1:cols
        if optcounts(rit,cit)==1
            here = cand{rit,cit};
            if has_north(here)
                y = line_north(1,:)+rows-rit+1;
                x = line_north(2,:)+cit;
                plot(x,y);
            end
            if has_east(here)
                y = line_east(1,:)+rows-rit+1;
                x = line_east(2,:)+cit;
                plot(x,y);
            end
            if has_south(here)
                y = line_south(1,:)+rows-rit+1;
                x = line_south(2,:)+cit;
                plot(x,y);
            end
            if has_west(here)
                y = line_west(1,:)+rows-rit+1;
                x = line_west(2,:)+cit;
                plot(x,y);
            end
        end
        if puzzle(rit,cit)
            plot(cit,rows-rit+1,'o','Color',tagcolors(puzzle(rit,cit),:),...
                'MarkerFaceColor',tagcolors(puzzle(rit,cit),:),...
                'MarkerSize',10);
        elseif numel(cand_colors{rit,cit})==1
            herecolor = cand_colors{rit,cit};
            plot(cit,rows-rit+1,'s','Color',tagcolors(herecolor,:),...
                'MarkerFaceColor',tagcolors(herecolor,:),...
                'MarkerSize',5);
        end
    end
end
