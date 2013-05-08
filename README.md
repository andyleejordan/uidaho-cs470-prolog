CS470/570 
Artificial Intelligence 
=======================

Spring 2013
Project #4 Prolog Option
Due: Thursday May 9

Prolog is a logical programming based on a variant of 1st order logic. To 'program' in Prolog you create a knowledge base of facts and rules about the problem. Then you may query the knowledge base. Prolog uses a modified backchaining algorithm to search the knowledge base in an attempt to prove the query.

Free versions of Prolog are available. I would recommend the one produced by the GNU Foundation, available at http://www.gprolog.org/.

For this project you need to create a knowledge base that defines the rules of Genealogy - i.e. that 'understands' family relationships. Specifically the knowledge base should contain rules that define:

* parent
* child
* sibling
* related
* decendent
* ancestor
* etc.

In addition, you will need to add 'basic' facts to the knowledge base: Sam is the Father of Mary, Mary is the sister of Bob, etc.
The exact syntax of the rules are up to you. For example, you may define relationships individually: father(X,Y). Or more generally: relation(X,Y,father). Your knowledge base should also include rules that encode 'definitions', e.g. father(F,C):-man(F),parent(F,C), F is a father is F is male and is a parent.

In addition to creating the knowledge base, you should, of course, test it. For example, make sure it can identify all parents, all relations of a given person, all siblings, etc.

Write-up : Write your results as a paper. Plan on ~5 pages, including sample output. The paper should include the following:

* An abstract summarizing what you did and what the results were.
* A description of the general syntax of your knowledge base works. What is the general form of the rules, examples of rules, etc.
* A results section that shows sample queries and results. Include a mixture of simple queries (who is Sam's father?) and complex queries (who are all of the sisters in the knowledge base?). If there are any queries it does not answer satisfactory include examples of those.
* A discussion section that discusses the strengths and weaknesses of your knowledge base. Are their questions it should be able to answer, but can't? Is it easy to add new rules? Is it easy to formulate general queries? Etc.
* An appendix containing the full knowledge base.
