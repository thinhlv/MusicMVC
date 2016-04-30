<%--<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcMusicStore.Models.Album>" %>

<script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Album</legend>

        <%: Html.HiddenFor(model => model.AlbumId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.GenreId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.GenreId) %>
            <%: Html.ValidationMessageFor(model => model.GenreId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ArtistId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ArtistId) %>
            <%: Html.ValidationMessageFor(model => model.ArtistId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Price) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Price) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.AlbumArtUrl) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.AlbumArtUrl) %>
            <%: Html.ValidationMessageFor(model => model.AlbumArtUrl) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>--%>

<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<MvcMusicStore.Models.Album>" %>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

<p>
    <%: Html.LabelFor(model => model.Title) %>
    <%: Html.TextBoxFor(model => model.Title) %>
    <%: Html.ValidationMessageFor(model => model.Title) %>
</p>
<p>
    <%: Html.LabelFor(model => model.Price) %>
    <%: Html.TextBoxFor(model => model.Price) %>
    <%: Html.ValidationMessageFor(model => model.Price) %>
</p>
<p>
    <%: Html.LabelFor(model => model.AlbumArtUrl) %>
    <%: Html.TextBoxFor(model => model.AlbumArtUrl) %>
    <%: Html.ValidationMessageFor(model => model.AlbumArtUrl) %>
</p>
<p>
    <%: Html.LabelFor(model => model.Artist) %>
    <%: Html.DropDownList("ArtistId", (SelectList) ViewData["Artists"]) %>
</p>
<p>
    <%: Html.LabelFor(model => model.Genre) %>
    <%: Html.DropDownList("GenreId", (SelectList) ViewData["Genres"]) %>
</p>
