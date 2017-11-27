function  drawOrganism( organism )
%drawOrganism visualization of phenotype of organism structure
%   organism -  organism structure to draw
axis([0 1 0 1])
pbaspect([1 1 1])%keep aspect ratio 1:1
color = mean([organism.chromosome{1}.gen{1};organism.chromosome{2}.gen{1}]);


if(isequal( organism.chromosome{1}.gen{2},organism.chromosome{2}.gen{2}))
  
    if(isequal(organism.chromosome{1}.gen{2},{'cyrcle'}))
        curvature =1;
    else
        curvature =0;
    end
else
    curvature =0.5;
end
edgeColor = sort([organism.chromosome{1}.gen{3};organism.chromosome{2}.gen{3}]);
rectangle('Position',[.05 .05 0.85 0.85],'Curvature',curvature,'EdgeColor',edgeColor(1),...
    'LineWidth',10,'FaceColor',[color(1)/255 color(2)/255 color(3)/255]);
axis off;
end

