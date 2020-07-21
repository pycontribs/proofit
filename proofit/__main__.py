import os
import sys


def main():
    for k, v in sorted(os.environ.items()):
        print(f"{k}: {v}")
    print(f"\n{sys.argv}")


if __name__ == "__main__":
    main()
