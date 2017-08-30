GA.jar is an executable jar that processes a set of queries with known ground truth using a genetic algorithm, which extracts from the original query a "near-optimal" query with optimized effectiveness.

To execute an experiment, the jar needs the following command line parameters to be specified:

1) The name of the project being processed. This is used to read the query, mapping, and corpus files for the appropriate project
2) The root directory that should be processed. This is a directory containing the <project>_Queries.txt, <project>_Corpus.txt, and <project>_Mapping.txt files, where <project> is specified by parameter 1
3) The number of iterations you would like to run. It is recommended to run several iterations and aggregate the results in order to mitigate bias introduced by the random nature of the mutation and selection operators.

Sample execution in Microsoft Powershell:
Start-Process java -ArgumentList '-jar', 'GA.jar', '<ProjectName>', '<ProcessingDirectory>', <NumberOfIterations>
