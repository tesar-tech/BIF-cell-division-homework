function [ randomOrganism ] = getRandomOrganism(varargin)
%getRandomOrganism Generate random properties (color, curvature, edge
%color) for organism. Properties are stored in genes.
%   isHomozygote - true or false. 

isHomozygote = 0;
if( isequal(size(varargin),[1 2]) && isequal(varargin{1},'isHomozygote')  &&  (varargin{2}==0||varargin{2}==1))
    isHomozygote = varargin{2};
end

edgeColors ='bcgkmrwy';%https://www.mathworks.com/help/matlab/ref/colorspec.html
shapes = {'rectangle','cyrcle'};
randomOrganism.chromosome{1}.gen{1} = randi([0 255],[1 3]);%color
randomOrganism.chromosome{1}.gen{2} = shapes(randi(2,1));%shape
randomOrganism.chromosome{1}.gen{3} = edgeColors(randi([1 8],1));%edge color

if (isHomozygote)
    randomOrganism.chromosome{2}.gen{1} = randomOrganism.chromosome{1}.gen{1};
    randomOrganism.chromosome{2}.gen{2} = randomOrganism.chromosome{1}.gen{2};
    randomOrganism.chromosome{2}.gen{3} = randomOrganism.chromosome{1}.gen{3};
else
    randomOrganism.chromosome{2}.gen{1} = randi([0 255],[1 3]);%color
    randomOrganism.chromosome{2}.gen{2} = shapes(randi(2,1));%shape
    randomOrganism.chromosome{2}.gen{3} = edgeColors(randi([1 8],1));%edge color
end
end

