#import "@local/schulzeug:0.1.0": *
#import templates.exam: cover-page

#let details = toml("details.toml")

#let meta = (
    class: details.exam.class,
    subject: details.exam.subject,
    kind: "sa",
    dates: (
        gehalten: details.exam.date,
        zurückgegeben: none, 
        eingetragen: none,
    ),
    comment: none, 
    total_points:  70,
)

#cover-page(..meta)