# Counting Sort
def sort_scores(unordered_scores, max_score):
    # array of 0s at indices 0..max_score
    scores_to_counts = [0] * (max_score+1)

    # populate scores_to_counts
    for score in unordered_scores:
        scores_to_counts[score] += 1

    # populate the final sorted list
    sorted_scores = []
    # for each item in scores_to_counts
    for score, count in enumerate(scores_to_counts):
        # for the number of times the item occurs
        for time in range(count):
            # add it to the sorted list
            sorted_scores.append(score)

    return sorted_scores