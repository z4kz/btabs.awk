{
    for (i = 1; i <= NF; ++i) {
        # gawk match() function
        match($i, /([eadg])([0-9]+)/, n)

        if (n[1] == "e") {
            note[i, 1] = "--"
            note[i, 2] = "--"
            note[i, 3] = "--"
            if (n[2] >= 0 && n[2] <= 9) {
                note[i, 4] = n[2] "-"
            } else {
                note[i, 4] = n[2]
            }
        } else if (n[1] == "a") {
            note[i, 1] = "--"
            note[i, 2] = "--"
            if (n[2] >= 0 && n[2] <= 9) {
                note[i, 3] = n[2] "-"
            } else {
                note[i, 3] = n[2]
            }
            note[i, 4] = "--"
        } else if (n[1] == "d") {
            note[i, 1] = "--"
            if (n[2] >= 0 && n[2] <= 9) {
                note[i, 2] = n[2] "-"
            } else {
                note[i, 2] = n[2]
            }
            note[i, 3] = "--"
            note[i, 4] = "--"
        } else if (n[1] == "g") {
            if (n[2] >= 0 && n[2] <= 9) {
                note[i, 1] = n[2] "-"
            } else {
                note[i, 1] = n[2]
            }
            note[i, 2] = "--"
            note[i, 3] = "--"
            note[i, 4] = "--"
        } else {
            note[i, 1] = "--"
            note[i, 2] = "--"
            note[i, 3] = "--"
            note[i, 4] = "--"
        }
    }

    for (j = 1; j <= 4; ++j) {
        printf("|--")
        for (i = 1; i <= NF; ++i) {
            printf("-")
            printf("%s", note[i, j])
            printf("-")
        }
        printf("--|")
        printf("\n")
    }
}
