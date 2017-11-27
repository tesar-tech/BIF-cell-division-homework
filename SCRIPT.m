%% initial 
%do not bother with this section
if (exist('.\support\implementation','dir')==7)
    addpath('.\support\implementation');%techer
else 
    addpath('todo');%student
end

%% Organism draw test
organism.chromosome{1}.gen{1} = [0 0 0];
organism.chromosome{1}.gen{2} = 'rectangle';
organism.chromosome{1}.gen{3} = 'r'; 

organism.chromosome{2}.gen{1} = [32 127 0];
organism.chromosome{2}.gen{2} = 'cyrcle';
organism.chromosome{2}.gen{3} = 'y'; 

randomOrganism = getRandomOrganism();

figure

subplot 121;drawOrganism(organism);title('built organism')
subplot 122;drawOrganism(randomOrganism);title('randomly generated organism')
%%

[organism_1_afterMitosis,organism_2_afterMitosis] = mitosis(organism);


figure
subplot 211; drawOrganism(organism);title('orginal organism')
subplot 223; drawOrganism(organism_1_afterMitosis);title('first clone')
subplot 224; drawOrganism(organism_1_afterMitosis);title('second clone')


%% meiosis and sexual reproduction

parent1 = getRandomOrganism();
parent2 = getRandomOrganism();

%parent1 = getRandomOrganism('isHomozygote',true);
%parent2 = getRandomOrganism('isHomozygote',true);

figure;
subplot 221; drawOrganism(parent1);title('parent 1');
subplot 222; drawOrganism(parent2);title('parent 2');
subplot 245; drawOrganism(sexualReproduction(parent1,parent2));title('child 1');
subplot 246; drawOrganism(sexualReproduction(parent1,parent2));title('child 2');
subplot 247; drawOrganism(sexualReproduction(parent1,parent2));title('child 3');
subplot 248; drawOrganism(sexualReproduction(parent1,parent2));title('child 4');



