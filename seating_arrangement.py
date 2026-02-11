#Source code for simulation of seating arrangement problem by brute force and heuristic approach 
import itertools
import random
import time

def generate_data(n):
    students = [f"S{i}" for i in range(n)]
    cities = ["Kathmandu", "Pokhara", "Lalitpur", "Bhaktapur"]
    city = {s: random.choice(cities) for s in students}
    friends = {s: [] for s in students}
    for s in students:
        others = [x for x in students if x != s]
        friends[s] = random.sample(others, random.randint(0, min(3, n-1)))
    return students, city, friends

def is_valid(arrangement, city, friends):
    for i in range(len(arrangement) - 1):
        s1 = arrangement[i]
        s2 = arrangement[i + 1]
        if s2 in friends[s1]:
            return False
        if city[s1] == city[s2]:
            return False
    return True

def brute_force(students, city, friends):
    for perm in itertools.permutations(students):
        if is_valid(perm, city, friends):
            return perm
    return None

def heuristic(students, city, friends):
    ordered = sorted(students, key=lambda s: len(friends[s]), reverse=True)
    arrangement = []
    for student in ordered:
        placed = False
        for i in range(len(arrangement) + 1):
            temp = arrangement[:i] + [student] + arrangement[i:]
            if is_valid(temp, city, friends):
                arrangement = temp
                placed = True
                break
        if not placed:
            return None
    return arrangement

def run_simulation():
    sizes = [4, 5, 6, 7, 8]
    print("Students | Brute Force Time (s) | Heuristic Time (s)")
    print("------------------------------------------------------")
    for n in sizes:
        students, city, friends = generate_data(n)

        start = time.time()
        brute_force(students, city, friends)
        brute_time = time.time() - start

        start = time.time()
        heuristic(students, city, friends)
        heuristic_time = time.time() - start

        print(f"{n:^8} | {brute_time:^20.5f} | {heuristic_time:^18.5f}")

if __name__ == "__main__":
    run_simulation()
