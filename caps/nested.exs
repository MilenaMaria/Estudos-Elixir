defmodule Customer do
    defstruct name: "", company: ""
end

defmodule BugReport do
    defstruct owner: %Customer{}, details: "", severity: 1
end

# put_in(report.owner.company, "nome")
#update_in(report.owner.name, &("Mr. " <> &1))