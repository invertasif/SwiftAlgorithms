import UIKit

enum Algorithm: CaseIterable {
    
    // Introduction
    
    case whatAreAlgorithms
    case whyLearnAlgorithms
    case bigO
    case designTechniques
    case howToContribute
    
    static let introduction: [Algorithm] = [
        .whatAreAlgorithms,
        .whyLearnAlgorithms,
        .bigO,
        .designTechniques,
        .howToContribute
    ]
    
    // getting started
    
    case stack
    case queue
    case insertionSort
    case binarySearch
    case binarySearchTree
    case mergeSort
    case boyerMoore
    
    static let gettingStarted: [Algorithm] = [
        .stack,
        .queue,
        .insertionSort,
        .binarySearch,
        .binarySearchTree,
        .mergeSort,
        .boyerMoore
    ]
    
    // Searching
    
    case linnearSearch
    case countOccurences
    case selectMinMax
    case kthLargestElement
    case selectionSampling
    case unionFind
    
    static let searching: [Algorithm] = [
        .linnearSearch,
        .countOccurences,
        .selectMinMax,
        .kthLargestElement,
        .selectionSampling,
        .unionFind
    ]
    
    // String Search
    
    case bruteForceStringSearch
    case knuthMorrisPratt
    case rabinKarp
    case longestCommonSubsequence
    case zAlgorithm
    
    static let stringSearch: [Algorithm] = [
        .bruteForceStringSearch,
        .knuthMorrisPratt,
        .rabinKarp,
        .longestCommonSubsequence,
        .zAlgorithm
    ]
    
    // Sorting
    
    case selectionSort
    case shellSort
    case quickSort
    case heapSort
    case introSort
    case countingSort
    case radixSort
    case topologicalSort
    case bubbleSort
    case slowSort
    
    struct Sorting {
        static let basic: [Algorithm] = [.insertionSort, .selectionSort, .shellSort]
        static let fast: [Algorithm] = [.quickSort, .mergeSort, .heapSort]
        static let hybrid: [Algorithm] = [.introSort]
        static let specialPurpose: [Algorithm] = [.countingSort, .radixSort, .topologicalSort]
        static let bad: [Algorithm] = [.bubbleSort, .slowSort]
    }
    
    // Compression
    
    case runLengthEncoding
    case huffmanCoding
    
    static let compression: [Algorithm] = [.runLengthEncoding, .huffmanCoding]
    
    // Miscellaneous
    
    case shuffle
    case comboSort
    case convexHull
    case millerRabin
    case minimumCoin
    
    static let miscellaneous: [Algorithm] = [
        .shuffle,
        .comboSort,
        .convexHull,
        .millerRabin,
        .minimumCoin
    ]
    
    // Mathematics
    
    case gcd
    case permutationsAndCombinations
    case shuntingYard
    case karatsubaMultiplication
    case haversineDistance
    case strassenMultiplicationMatrix
    
    static let mathematics: [Algorithm] = [
        .gcd,
        .permutationsAndCombinations,
        .shuntingYard,
        .karatsubaMultiplication,
        .haversineDistance,
        .strassenMultiplicationMatrix,
    ]
    
    // Machine Learning
    
    case kMeansClustering
    case linnearRegression
    case naiveBayesClassifier
    case simulatedAnnealing
    
    static let machineLearning: [Algorithm] = [
        .kMeansClustering,
        .linnearRegression,
        .naiveBayesClassifier,
        .simulatedAnnealing,
    ]
    
    // TODO
    
    var actionImage: UIImage? {
        switch self {
        case .whatAreAlgorithms:
            return UIImage(named: "pancakes")
        case .whyLearnAlgorithms:
            return UIImage(named: "?")
        case .bigO:
            return UIImage(named: "line_chart")
        case .designTechniques:
            return UIImage(named: "algo")
        case .howToContribute:
            return UIImage(named: "git")
        default:
            return nil
        }
    }
    
    var subtitle: String? {
        switch self {
        case .whatAreAlgorithms:
            return "Pancakes!"
        case .whyLearnAlgorithms:
            return "Worried this isn't your cup of tea? Then read this."
        case .bigO:
            return "We often say things like, 'This algorithm is O(n).' If you don't know what that means, read this first."
        case .designTechniques:
            return "How do you create your own algorithms?"
        case .howToContribute:
            return "Report an issue to leave feedback, or submit a pull request."
            
        // getting started
            
        case .stack, .queue, .insertionSort, .binarySearch, .binarySearchTree, .mergeSort, .boyerMoore: return nil
            
        // Searching
            
        case .linnearSearch:
            return "Find an element in an array."
        case .countOccurences:
            return "Count how often a value appears in an array."
        case .selectMinMax:
            return "Find the minimum/maximum value in an array."
        case .kthLargestElement:
            return "Find the k-th largest element in an array, such as the median."
        case .selectionSampling:
            return "Randomly choose a bunch of items from a collection."
        case .unionFind:
            return "Keeps track of disjoint sets and lets you quickly merge them."
            
            // String Search
            
        case .bruteForceStringSearch:
            return "A naive method"
        case .knuthMorrisPratt:
            return "A linear-time string algorithm that returns indexes of all occurrencies of a given pattern."
        case .rabinKarp:
            return "Faster search by using hashing."
        case .longestCommonSubsequence:
            return "Find the longest sequence of characters that appear in the same order in both strings."
        case .zAlgorithm:
            return "Finds all instances of a pattern in a String, and returns the indexes of where the pattern starts within the String."
            
            // Sorting
            
        case .selectionSort, .shellSort, .quickSort, .heapSort, .introSort, .countingSort, .radixSort, .topologicalSort, .bubbleSort, .slowSort:
            return nil
            
            // Compression
            
        case .runLengthEncoding:
            return "Store repeated values as a single byte and a count."
        case .huffmanCoding:
            return "Store more common elements using a smaller number of bits."
            
            // Miscellaneous
            
        case .shuffle:
            return "Randomly rearranges the contents of an array."
        case .comboSort:
            return "An improve upon the Bubble Sort algorithm."
        case .convexHull:
            return "The Convex Hull algorithm calculates the shape (made up from the points itself) containing all these points."
        case .millerRabin:
            return "Is the number a prime number?"
        case .minimumCoin:
            return "A showcase for dynamic programming."
            
            // Mathematics
            
        case .gcd:
            return "Special bonus: the least common multiple."
        case .permutationsAndCombinations:
            return "Get your combinatorics on!"
        case .shuntingYard:
            return "Convert infix expressions to postfix."
        case .karatsubaMultiplication:
            return "Another take on elementary multiplication."
        case .haversineDistance:
            return "Calculating the distance between 2 points from a sphere."
        case .strassenMultiplicationMatrix:
            return "Efficient way to handle matrix multiplication."
            
            // Machine Learning
            
        case .kMeansClustering:
            return "Unsupervised classifier that partitions data into k clusters"
        case .linnearRegression:
            return "A technique for creating a model of the relationship between two (or more) variable quantities."
        case .naiveBayesClassifier:
            return "The goal of a classifier is to predict the class of a given data entry based on previously fed data and its features."
        case .simulatedAnnealing:
            return "Probabilistic technique for approximating the global maxima in a (often discrete) large search space."
        }
    }
    
    var navTitle: String {
        switch self {
        case .whatAreAlgorithms:
            return "Pancakes!"
        case .whyLearnAlgorithms:
            return "Why Learn?"
        case .bigO:
            return "Big O"
        case .designTechniques:
            return "Design Techniques"
        case .howToContribute:
            return "How To Contribute"
        default:
            return self.title
        }
    }
    
    var title: String {
        switch self {
        case .whatAreAlgorithms:
            return "What are algorithms and data structures?"
        case .whyLearnAlgorithms: return
            "Why learn algorithms?"
        case .bigO:
            return "Big-O notation"
        case .designTechniques:
            return "Algorithm design techniques"
        case .howToContribute:
            return "How to contribute"
            
            // getting started
            
        case .stack:
            return "Stack"
        case .queue:
            return "Queue"
        case .insertionSort:
            return "Insertion Sort"
        case .binarySearch:
            return "Binary Search"
        case .binarySearchTree:
            return "Binary Search Tree"
        case .mergeSort:
            return "Merge Sort"
        case .boyerMoore:
            return "Boyer Moore"
            
            // Searching
            
        case .linnearSearch:
            return "Linnear Search"
        case .countOccurences:
            return "Count Occurences"
        case .selectMinMax:
            return "Select Min / Max"
        case .kthLargestElement:
            return "Kth Largest Element"
        case .selectionSampling:
            return "Selection Sampling"
        case .unionFind:
            return "Union Find"
            
            // String Search
            
        case .bruteForceStringSearch:
            return "Brute Force String Search"
        case .knuthMorrisPratt:
            return "Knuth Morris Pratt"
        case .rabinKarp:
            return "Rabin Karp"
        case .longestCommonSubsequence:
            return "Longest Common Subsequence"
        case .zAlgorithm:
            return "Z Algorithm"
            
            // Sorting
            
        case .selectionSort:
            return "Selection Sort"
        case .shellSort:
            return "Shell Sort"
        case .quickSort:
            return "Quick Sort"
        case .heapSort:
            return "Heap Sort"
        case .introSort:
            return "Intro Sort"
        case .countingSort:
            return "Counting Sort"
        case .radixSort:
            return "Radix Sort"
        case .topologicalSort:
            return "Topological Sort"
        case .bubbleSort:
            return "Bubble Sort"
        case .slowSort:
            return "Slow Sort"
            
            // Compression
            
        case .runLengthEncoding:
            return "Run Length Encoding"
        case .huffmanCoding:
            return "Huffman Coding"
            
            // Miscellaneous
            
        case .shuffle:
            return "Shuffle"
        case .comboSort:
            return "Combo Sort"
        case .convexHull:
            return "Convex Hull"
        case .millerRabin:
            return "Miller Rabin"
        case .minimumCoin:
            return "Minimum Coin"
            
            // Mathematics
            
        case .gcd:
            return "Greatest Common Denominator"
        case .permutationsAndCombinations:
            return "Permutations & Combinations"
        case .shuntingYard:
            return "Shunning Yard"
        case .karatsubaMultiplication:
            return "Karatsuba Multiplication"
        case .haversineDistance:
            return "Haversine Distance"
        case .strassenMultiplicationMatrix:
            return "Strassen Multiplication Matrix"
            
            // Machine Learning
            
        case .kMeansClustering:
            return "K Means Clustering"
        case .linnearRegression:
            return "Linnear Regression"
        case .naiveBayesClassifier:
            return "Naive Bayes Classifier"
        case .simulatedAnnealing:
            return "Simulated Annealing"
        }
    }
    
    static func category(for action: Algorithm) -> Algorithm.Category? {
        switch action {
            
        // getting started
        case .stack, .queue, .insertionSort, .binarySearch, .binarySearchTree, .mergeSort, .boyerMoore:
            return .gettingStarted
            
        // Searching
        case .linnearSearch, .countOccurences, .selectMinMax, .kthLargestElement, .selectionSampling, .unionFind:
            return .searching
            
        // String Search
        case .bruteForceStringSearch, .knuthMorrisPratt, .rabinKarp, .longestCommonSubsequence, .zAlgorithm:
            return .stringSearch
            
        // Sorting
        case .selectionSort, .shellSort, .quickSort, .heapSort, .introSort, .countingSort, .radixSort, .topologicalSort, .bubbleSort, .slowSort:
            return .sorting
            
        // Compression
        case .runLengthEncoding, .huffmanCoding:
            return .compression
            
        // Miscellaneous
        case .shuffle, .comboSort, .convexHull, .millerRabin, .minimumCoin:
            return .misc
            
        // Mathematics
        case .gcd, .permutationsAndCombinations, .shuntingYard, .karatsubaMultiplication, .haversineDistance, .strassenMultiplicationMatrix:
            return .math
            
        // Machine Learning
        case .kMeansClustering, .linnearRegression, .naiveBayesClassifier, .simulatedAnnealing:
            return .machineLearning
            
        default:
            return nil
        }
    }
    
    
    enum Category: CaseIterable {
        case gettingStarted
        case searching
        case stringSearch
        case sorting
        case compression
        case misc
        case math
        case machineLearning
        
        var title: String {
            switch self {
            case .gettingStarted:
                return "Getting Started"
            case .searching:
                return "Searching"
            case .stringSearch:
                return "String Search"
            case .sorting:
                return "Sorting"
            case .compression:
                return "Compression"
            case .misc:
                return "Miscellaneous"
            case .math:
                return "Math"
            case .machineLearning:
                return "Machine Learning"
            }
        }
        
        var color: UIColor {
            switch self {
            case .gettingStarted:
                return .coral()
            case .searching:
                return .newGreen()
            case .stringSearch:
                return .amethist()
            case .sorting:
                return .newOrange()
            case .compression:
                return .newPink()
            case .misc:
                return .newBlue()
            case .math:
                return .newYellow()
            case .machineLearning:
                return .newLightBlue()
            }
        }
        
        var image: UIImage? {
            switch self {
            case .gettingStarted:
                return UIImage(named: "start")
            case .searching:
                return UIImage(named: "search")
            case .stringSearch:
                return UIImage(named: "search")
            case .sorting:
                return UIImage(named: "filter")
            case .compression:
                return UIImage(named: "zip")
            case .misc:
                return UIImage(named: "misc")
            case .math:
                return UIImage(named: "math")
            case .machineLearning:
                return UIImage(named: "pcb")
            }
        }
    }
    
    var category: Algorithm.Category? {
        return Algorithm.category(for: self)
    }
    
}
