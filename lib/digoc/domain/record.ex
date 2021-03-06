defmodule DigOc.Domain.Record do

  import DigOc, only: [response: 1]
  import DigOc.Request, only: [postreq: 2, putreq: 2, delreq: 1]


  @doc """
  Create a new domain record.
  """
  def new(domain, params), do: postreq("domains/#{ domain }/records", params)

  @doc """
  Like `new/2` but return only the response body.
  """
  def new!(domain, params), do: new(domain, params) |> response


  @doc """
  Change the name of a domain record.
  """
  def update(domain, id, name) do
    putreq("domains/#{ domain }/records/#{ id }", %{ name: name })
  end

  
  @doc """
  Like `update/3` but return only the response body.
  """
  def update!(domain, id, name), do: update(domain, id, name) |> response


  @doc """
  Delete a domain record.
  """
  def delete(domain, id), do: delreq("domains/#{ domain }/records/#{ id }")

  
  @doc """
  Like `delete/2` but return only the response body.
  """
  def delete!(domain, id), do: delete(domain, id) |> response

end