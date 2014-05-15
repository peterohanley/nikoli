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
puzzle = [...
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
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
for rit = 1:rows
    for cit = 1:cols
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
%         optcounts = cellfun(@numel,cand);
%         coloropts = cellfun(@numel,cand_colors);
%         fprintf('rit: %d cit:%d entropy: %f\n',rit,cit,sum(sum(log(optcounts.*coloropts))));
    end
end

%% check that all link types are actually potentially possible
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
for rit = 1:rows
    for cit = 1:cols
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
        
    end
end

%% start combining candidates
% allows us to store more specific possibilities
%% print out current state
optcounts = cellfun(@numel,cand);
coloropts = cellfun(@numel,cand_colors);
fprintf('entropy: %f\n',sum(sum(log(optcounts.*coloropts))));
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
