# Reference
## Deployment
<details><summary><code>client.deployment.<a href="/lib/CloudPDF/deployment/client.rb">license_status</a>() -> CloudPDF::Types::DeploymentLicenseStatusResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.deployment.license_status
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `CloudPDF::Deployment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc
<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">head</a>(doc_id:) -> CloudPDF::Types::DocHead200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.head(doc_id: "docId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">changes</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocChanges200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Each change stands on its own and names itself by `opId`: a refused change rolls back alone, and the answer lists every change in order, applied with its result or refused with its error. Asked again under its `opId`, a change gets the same answer, refusals included; a different change under an answered `opId` is refused (IdempotencyKeyReused). `{ opId, undoOf }` undoes an earlier change of the caller, here or in an earlier request; an undo leaves alone what was changed since, and the undo of an undo redoes. A redaction, a flatten, a form repair or a completed signature ends undo for the changes before it (UndoUnavailable). Each op is checked against its own capability: annotation ops need `doc.annotate.modify`, form values `doc.forms.fill`, form structure `doc.forms.modify`, metadata `doc.metadata.modify`, outline `doc.outline.modify`, pages `doc.pages.assemble`, embedded files `doc.attachments.modify`. Bytes (a stamp's drawing, an attached file, a signature's artwork, a PDF whose pages come in) travel as multipart: a JSON `body` part, each op naming its files by role as `resources: { <role>: '<key>' }`, and each file as the part `resource:<key>`. At most 64 changes per request and 512 ops per change.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.changes(
  doc_id: "docId",
  layer_name: "layerName",
  changes: [{
    op_id: "opId"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**changes:** `Internal::Types::Array[CloudPDF::Doc::Types::DocChangesRequestChangesItem]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">download</a>(doc_id:, layer_name:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.download(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">download_link</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocDownloadLink200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The link opens the layer as it is when created: once the layer changes, it answers 404, so create it right before handing it over. It downloads that one file and nothing else, and a password-protected document is checked when the link is created. Deployments that verify tokens with their own keys (JWKS) mint links on their backend: a doc token with `layer_name`, a `download: { docVersion, mode: "incremental" }` claim and a short `exp`, passed as `link` on the versioned download URL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.download_link(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**expires_in:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">manifest</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocManifest200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.manifest(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">render</a>(doc_id:, layer_name:, page_key:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Render parameters (viewport, format) pass as flat dotted query keys, e.g. `?viewport.kind=width&viewport.width=800`; the full grammar is documented with the viewer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.render(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">text</a>(doc_id:, layer_name:, page_key:) -> CloudPDF::Types::DocText200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.text(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shares
<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">exchange</a>(request) -> CloudPDF::Types::SharesExchange200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unauthenticated, but requires a browser Origin header, checked against the grant allowlist. Unknown, revoked, and disabled tokens are indistinguishable (404). Passphrase-protected grants return 422 SharePasswordRequired until `password` is supplied. A link that asks its visitors who they are on open returns 422 VisitorIdentityRequired until the required answers are given; `error.details` carries `fields` (what the link asks), `missing`, `invalid`, `purpose` and `privacyUrl`. A link that asks before the first change issues the session at once with `visitor.identityRequest`, and writes answer 403 VisitorIdentityRequired with the same details until the visitor exchanges again with their answers. Answers that can not be taken answer 422 on any link. Mounted only when the deployment can sign (HS256 mode).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.exchange(share_token: "shareToken")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**share_token:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_handle:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**restart:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_identity:** `CloudPDF::Shares::Types::SharesExchangeRequestVisitorIdentity` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">list</a>(tenant_id:) -> CloudPDF::Types::SharesList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.list(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**archived:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">create</a>(tenant_id:, request) -> CloudPDF::Types::SharesCreate200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

The returned share id is the public share token. Mounted only when the deployment can sign (HS256 mode) — exchange mints session JWTs, so grants exist only where minting does.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.create(
  tenant_id: "tenantId",
  doc_id: "docId",
  scope: ["scope"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_mode:** `CloudPDF::Shares::Types::SharesCreateRequestLayerMode` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**keep_visitor_layers:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_idle_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_identity:** `CloudPDF::Shares::Types::SharesCreateRequestVisitorIdentity` 
    
</dd>
</dl>

<dl>
<dd>

**identity:** `CloudPDF::Types::Identity` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**origins:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_ttl_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">get</a>(tenant_id:, share_id:) -> CloudPDF::Types::SharesGet200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.get(
  tenant_id: "tenantId",
  share_id: "shareId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">delete</a>(tenant_id:, share_id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.delete(
  tenant_id: "tenantId",
  share_id: "shareId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">update</a>(tenant_id:, share_id:, request) -> CloudPDF::Types::SharesUpdate200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.update(
  tenant_id: "tenantId",
  share_id: "shareId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_mode:** `CloudPDF::Shares::Types::SharesUpdateRequestLayerMode` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**keep_visitor_layers:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_idle_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_identity:** `CloudPDF::Shares::Types::SharesUpdateRequestVisitorIdentity` 
    
</dd>
</dl>

<dl>
<dd>

**identity:** `CloudPDF::Types::Identity` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**origins:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**password:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_ttl_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**disabled:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**expires_at:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.<a href="/lib/CloudPDF/shares/client.rb">archive</a>(tenant_id:, share_id:) -> CloudPDF::Types::SharesArchive200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archiving is final: an archived link never exchanges again, and to share again you create a new link. Pausing (`disabled`) is the reversible stop. An archived link no longer counts as using its shared layer, so that layer can be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.archive(
  tenant_id: "tenantId",
  share_id: "shareId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tenants
<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">list</a>() -> CloudPDF::Types::TenantsList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">create</a>(request) -> CloudPDF::Types::TenantsCreate200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.create(id: "id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">get</a>(tenant_id:) -> CloudPDF::Types::TenantsGet200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.get(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">delete</a>(tenant_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Destroys the tenant and everything in its namespace — documents, layers, stored bytes, audit history. Irreversible.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.delete(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">resume</a>(tenant_id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.resume(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">suspend</a>(tenant_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Instantly reversible with resume. The API token is exempt, so a suspended tenant can still be inspected, exported, resumed, or deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.suspend(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tenants.<a href="/lib/CloudPDF/tenants/client.rb">usage</a>(tenant_id:) -> CloudPDF::Types::TenantsUsage200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Facts only — no limits or billing state. Views count share exchanges plus authorized /v1/access grants, deduplicated across the two.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tenants.usage(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**period:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tenants::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Documents
<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">list</a>(tenant_id:) -> CloudPDF::Types::DocumentsList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.list(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**state:** `CloudPDF::Documents::Types::ListDocumentsRequestState` — Only documents in this state. Without it, every state except deleting.
    
</dd>
</dl>

<dl>
<dd>

**q:** `String` — Only documents whose name contains this text, ignoring case.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — Only documents directly in this folder (root: the top level). Without it, documents in every folder.
    
</dd>
</dl>

<dl>
<dd>

**sort:** `CloudPDF::Documents::Types::ListDocumentsRequestSort` — createdAt (default), name (ignoring case), or size (stored bytes; 0 while pending).
    
</dd>
</dl>

<dl>
<dd>

**order:** `CloudPDF::Documents::Types::ListDocumentsRequestOrder` — Defaults to the reading order of the sort: A to Z for name, newest and largest first otherwise.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">get</a>(tenant_id:, id:) -> CloudPDF::Types::DocumentsGet200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.get(
  tenant_id: "tenantId",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">delete</a>(tenant_id:, id:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.delete(
  tenant_id: "tenantId",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">update</a>(tenant_id:, id:, request) -> CloudPDF::Types::DocumentsUpdate200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A document that is being deleted answers 404.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.update(
  tenant_id: "tenantId",
  id: "id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — What people call the document: shown in dashboards, searched and sorted by. 1 to 255 characters, no control characters, no leading or trailing whitespace. Names need not be unique.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">commit</a>(tenant_id:, id:, request) -> CloudPDF::Types::DocumentsCommit200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.commit(
  tenant_id: "tenantId",
  id: "id",
  sha256: "sha256"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha256:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">download</a>(tenant_id:, id:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.download(
  tenant_id: "tenantId",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">thumbnail</a>(tenant_id:, id:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.thumbnail(
  tenant_id: "tenantId",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">upload_proxy</a>(tenant_id:, id:, request) -> CloudPDF::Types::DocumentsUploadProxy200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This bounded origin-mediated fallback must only be used after documents.init returns upload.kind=proxy. Auto mode prefers a presigned object-store PUT whenever available.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
File.open("document.pdf", "rb") do |file|
  client.documents.upload_proxy(
    tenant_id: "tenantId",
    id: "id",
    file: file
  )
end
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">import_from</a>(tenant_id:, request) -> CloudPDF::Types::DocumentsImportFrom200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Default mode is synchronous and bounded: the response returns only after the transfer verified and committed (or failed). mode=async (connection sources only) answers 202 immediately and an in-process worker performs the transfer with leased, fenced retries; poll the document until ready/failed. The deployment import policy gates scheme, network range, and size; sources must declare a length. CloudPDF copies and owns the bytes — the source is never referenced in place. A 502 marks a retryable upstream failure: retry with the same idempotencyKey to resume the same document. URL sources are capabilities and never echoed back. Connection sources name operator-registered storage (bucket/prefix scope, allowed credential classes, and tenant bindings are deployment configuration); `revision` is provider-interpreted (S3 VersionId, GCS generation, Azure version id).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.import_from(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `CloudPDF::Documents::Types::DocumentsImportFromRequestSource` — Where CloudPDF pulls the bytes from. The two shapes differ in who supplies the authority to read, not in which storage vendor holds the file.
    
</dd>
</dl>

<dl>
<dd>

**expected:** `CloudPDF::Documents::Types::DocumentsImportFromRequestExpected` — Integrity pins, enforced when present. When absent, the server-observed values become authoritative.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — What people call the document: shown in dashboards, searched and sorted by. 1 to 255 characters, no control characters, no leading or trailing whitespace. Names need not be unique.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — A folder id, or root for the top level.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Retrying with the same key resumes the same document rather than importing a second copy — including after a 502.
    
</dd>
</dl>

<dl>
<dd>

**dedup_mode:** `CloudPDF::Documents::Types::DocumentsImportFromRequestDedupMode` — always-create (default) creates a new document every time. reuse-existing returns a document that already holds the same content instead of storing it twice.
    
</dd>
</dl>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `CloudPDF::Documents::Types::DocumentsImportFromRequestMode` — sync (default) holds the response open for the whole transfer. async answers 202 with the document pending and transfers in the background; it requires a connection source, and filesystem connections additionally require expected.sha256.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.<a href="/lib/CloudPDF/documents/client.rb">init</a>(tenant_id:, request) -> CloudPDF::Types::DocumentsInit200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.init(
  tenant_id: "tenantId",
  content_length: 1.1,
  content_sha256: "contentSha256"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**content_length:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**content_sha256:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — What people call the document: shown in dashboards, searched and sorted by. 1 to 255 characters, no control characters, no leading or trailing whitespace. Names need not be unique.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — A folder id, or root for the top level.
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dedup_mode:** `CloudPDF::Documents::Types::DocumentsInitRequestDedupMode` — always-create (default) creates a new document every time. reuse-existing returns a document that already holds the same content instead of storing it twice.
    
</dd>
</dl>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**upload_ttl_sec:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**upload_preference:** `CloudPDF::Documents::Types::DocumentsInitRequestUploadPreference` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Folders
<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">list</a>(tenant_id:) -> CloudPDF::Types::FoldersList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.list(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — Only the folders directly in this folder (root: the top level). Without it, every folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">create</a>(tenant_id:, request) -> CloudPDF::Types::FoldersCreate200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

409 Conflict carries `details.reason`: `name-taken` (a sibling has the name, ignoring case; `details.name`) or `too-deep` (folders nest at most 100 levels; `details.maxDepth`). 404 when the parent folder does not exist.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.create(
  tenant_id: "tenantId",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — What people call the folder: 1 to 255 characters, no control characters, no leading or trailing whitespace, and unique among the folder's siblings, ignoring case.
    
</dd>
</dl>

<dl>
<dd>

**parent_id:** `String` — A folder id, or root for the top level.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">get</a>(tenant_id:, folder_id:) -> CloudPDF::Types::FoldersGet200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.get(
  tenant_id: "tenantId",
  folder_id: "folderId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">delete</a>(tenant_id:, folder_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Without recursive, a folder with anything inside is refused: 409 Conflict with `details.reason` `not-empty` and what it holds, counted over every level below, in `details.folders` and `details.documents`. With recursive=true, the folder and every folder under it go at once, and every document in them stops opening, leaves every list and stops answering its share links at once; their stored files and links are removed in the background. Uploads into those folders that have not committed cannot commit.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.delete(
  tenant_id: "tenantId",
  folder_id: "folderId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**recursive:** `Internal::Types::Boolean` — true deletes everything in the folder too. Never the default.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">update</a>(tenant_id:, folder_id:, request) -> CloudPDF::Types::FoldersUpdate200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

409 Conflict with `details.reason` `name-taken` when a sibling has the name, ignoring case.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.update(
  tenant_id: "tenantId",
  folder_id: "folderId",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — What people call the folder: 1 to 255 characters, no control characters, no leading or trailing whitespace, and unique among the folder's siblings, ignoring case.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.folders.<a href="/lib/CloudPDF/folders/client.rb">move_into</a>(tenant_id:, folder_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Up to 1,000 ids in total. A folder moves with everything in it. 404 NotFound names the ids that do not exist or are being deleted in `details.documentIds` and `details.folderIds`. 409 Conflict carries `details.reason`: `cycle` (the destination is a moved folder or inside one; `details.folderId`), `too-deep` (the move would nest folders deeper than 100 levels; `details.maxDepth`) or `name-taken` (a moved folder's name is taken in the destination, ignoring case; `details.name`).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.folders.move_into(
  tenant_id: "tenantId",
  folder_id: "folderId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — A folder id, or root for the top level.
    
</dd>
</dl>

<dl>
<dd>

**document_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**folder_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Folders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Tokens
<details><summary><code>client.tokens.<a href="/lib/CloudPDF/tokens/client.rb">issue</a>(tenant_id:, request) -> CloudPDF::Types::TokensIssue200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

kind "tenant" requires the API token — authority mints only downward. Mounted only when the deployment can sign (HS256 mode); asymmetric deployments mint with their own private key.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tokens.issue(tenant_id: "tenantId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CloudPDF::Types::TokensIssueRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tokens.<a href="/lib/CloudPDF/tokens/client.rb">revoke</a>(tenant_id:, jti:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Mounted only when the deployment enables token revocation.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tokens.revoke(
  tenant_id: "tenantId",
  jti: "jti"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**jti:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**reason:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**expires_at_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Tokens::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Annotations
<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">list_all</a>(doc_id:, layer_name:) -> CloudPDF::Types::AnnotationList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns one entry per page plus the audit-log cursor for reconciling subsequent document events. Page order is unspecified; join by `page` (a `PageRef`) when display order matters.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.list_all(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">list</a>(doc_id:, layer_name:, page_key:) -> CloudPDF::Types::AnnotationList</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.list(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">create</a>(doc_id:, layer_name:, page_key:, request) -> CloudPDF::Types::DocAnnotationsCreate200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Doc JWTs may instead carry collab scopes (annotations:create:self, …) that refine per-annotation authorship rules; the API token is exempt from both.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.create(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">delete</a>(doc_id:, layer_name:, page_key:, annot_key:) -> CloudPDF::Types::DocAnnotationsDelete200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.delete(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">update</a>(doc_id:, layer_name:, page_key:, annot_key:, request) -> CloudPDF::Types::DocAnnotationsUpdate200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.update(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">read_appearance</a>(doc_id:, layer_name:, page_key:, annot_key:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.read_appearance(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">read_file</a>(doc_id:, layer_name:, page_key:, annot_key:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A file that decodes past the server's limit is refused (PayloadTooLarge).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.read_file(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">export_appearance</a>(doc_id:, layer_name:, page_key:, request) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.export_appearance(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  request: {
    string: {
      key: "value"
    }
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">flatten</a>(doc_id:, layer_name:, page_key:, request) -> CloudPDF::Types::DocAnnotationsFlatten200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.flatten(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">reorder</a>(doc_id:, layer_name:, page_key:, request) -> CloudPDF::Types::DocAnnotationsReorder200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.annotations.reorder(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  refs: [],
  position: "start"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**refs:** `Internal::Types::Array[CloudPDF::Types::AnnotationRef]` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `CloudPDF::Types::AnnotationPosition` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Annotations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Attachments
<details><summary><code>client.doc.attachments.<a href="/lib/CloudPDF/doc/attachments/client.rb">download</a>(doc_id:, layer_name:, file_key:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A file that decodes past the server's limit is refused (PayloadTooLarge).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.attachments.download(
  doc_id: "docId",
  layer_name: "layerName",
  file_key: "fileKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**file_key:** `String` — The embedded file's name-tree key (its `ref.key`), token-text encoded, as `fieldKey` is.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Attachments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.attachments.<a href="/lib/CloudPDF/doc/attachments/client.rb">list</a>(doc_id:, layer_name:) -> CloudPDF::Types::AttachmentList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A file-attachment annotation's file is listed with the annotation; read its bytes with `doc.annotations.readFile`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.attachments.list(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Attachments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Forms
<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">list</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocFormsList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.list(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">reorder_calculations</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocFormsReorderCalculations200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.reorder_calculations(
  doc_id: "docId",
  layer_name: "layerName",
  fields: [],
  position: "start"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `Internal::Types::Array[CloudPDF::Types::FormFieldRef]` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `CloudPDF::Types::FieldPosition` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">set_value</a>(doc_id:, layer_name:, field_key:, request) -> CloudPDF::Types::DocFormsSetValue200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.set_value(
  doc_id: "docId",
  layer_name: "layerName",
  field_key: "fieldKey",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**field_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">reset</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocFormsReset200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.reset(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**refs:** `Internal::Types::Array[CloudPDF::Types::FormFieldRef]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">delete_widget</a>(doc_id:, layer_name:, page_key:, annot_key:) -> CloudPDF::Types::DocFormsDeleteWidget200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.delete_widget(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">update_widget</a>(doc_id:, layer_name:, page_key:, annot_key:, request) -> CloudPDF::Types::DocFormsUpdateWidget200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.update_widget(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  annot_key: "annotKey",
  patch: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` — The annotation's address on the page: `obj:N`, its indirect object number, or `base:N` for an annotation the uploaded file stored inline (without an object number of its own), the position it was born at in the page's /Annots. The name the annotation's `ref` carries for life.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**patch:** `CloudPDF::Types::WidgetPatch` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">reorder_widgets</a>(doc_id:, layer_name:, page_key:, request) -> CloudPDF::Types::DocFormsReorderWidgets200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.reorder_widgets(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey",
  widgets: [],
  position: "start"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**widgets:** `Internal::Types::Array[CloudPDF::Types::AnnotationRef]` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `CloudPDF::Types::AnnotationPosition` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Forms::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Metadata
<details><summary><code>client.doc.metadata.<a href="/lib/CloudPDF/doc/metadata/client.rb">get</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocumentMetadata</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.metadata.get(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Metadata::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Outline
<details><summary><code>client.doc.outline.<a href="/lib/CloudPDF/doc/outline/client.rb">get</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocumentOutline</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.outline.get(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Outline::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Pages
<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">set_scale</a>(doc_id:, layer_name:, page_key:, request) -> CloudPDF::Types::DocPagesSetScale200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.set_scale(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**measure:** `CloudPDF::Doc::Pages::Types::DocPagesSetScaleRequestMeasure` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">viewports</a>(doc_id:, layer_name:, page_key:) -> CloudPDF::Types::DocPagesViewports200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.viewports(
  doc_id: "docId",
  layer_name: "layerName",
  page_key: "pageKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**page_key:** `String` — The page's address, `obj:N`: the page's indirect object number, the durable identity every `PageLayout.ref` carries. Mirrors `annotKey` and `fieldKey`.
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">extract</a>(doc_id:, layer_name:, request) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A read, not a mutation: the source document is untouched and no event is published. Body is `{"pages": PageRef[], "flatten"?: {"usage"?: "display" | "print"}, "includeAnnotations"?: boolean, "includeFormFields"?: boolean}`; the response body is the new PDF. With `flatten` the copy is the pages as they draw for `usage` (`"print"`: a print copy): the annotations and form fields painted in, nothing interactive left, layers in their state for the usage. A flattened copy takes `doc.download` or `doc.download.flattened`, and paints only what the caller may read; `includeAnnotations` and `includeFormFields` choose what it paints, and are refused without `flatten`.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.extract(
  doc_id: "docId",
  layer_name: "layerName",
  request: {
    string: {
      key: "value"
    }
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">flatten</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesFlatten200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.flatten(
  doc_id: "docId",
  layer_name: "layerName",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">set_name</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesSetName200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.set_name(
  doc_id: "docId",
  layer_name: "layerName",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">remove_name</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesRemoveName200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.remove_name(
  doc_id: "docId",
  layer_name: "layerName",
  request: {
    key: "value"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Pages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Redactions
<details><summary><code>client.doc.redactions.<a href="/lib/CloudPDF/doc/redactions/client.rb">apply</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocRedactionsApply200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.redactions.apply(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` — Names the change: 1 to 255 printable ASCII characters. A retry under the same key on the same layer answers with what the first request committed, and changes nothing.
    
</dd>
</dl>

<dl>
<dd>

**pages:** `Internal::Types::Array[CloudPDF::Types::PageRef]` 
    
</dd>
</dl>

<dl>
<dd>

**annotations:** `Internal::Types::Array[CloudPDF::Types::AnnotationRef]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Redactions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Signatures
<details><summary><code>client.doc.signatures.<a href="/lib/CloudPDF/doc/signatures/client.rb">list</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocSignaturesList200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Describes the bytes the layer is over: the base version's signatures plus the layer's own edits as the last revision. Signed bytes (contents, digests, revision prefixes) are served per base version under /versions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.signatures.list(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Signatures::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.signatures.<a href="/lib/CloudPDF/doc/signatures/client.rb">cancel</a>(doc_id:, layer_name:, signing_id:) -> CloudPDF::Types::DocSignaturesCancel200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.signatures.cancel(
  doc_id: "docId",
  layer_name: "layerName",
  signing_id: "signingId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signing_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Signatures::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.signatures.<a href="/lib/CloudPDF/doc/signatures/client.rb">complete</a>(doc_id:, layer_name:, signing_id:, request) -> CloudPDF::Types::DocSignaturesComplete200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

`cms` is the detached CMS over the prepared digest, base64. `expectedVersion` must be what prepare returned. Idempotent by signing id: the same CMS again answers `already-completed`. The new version is the layer's own: only this layer moves to it, and the document and every other layer stay as they were. Refetch the manifest after a completion.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.signatures.complete(
  doc_id: "docId",
  layer_name: "layerName",
  signing_id: "signingId",
  cms: "cms",
  expected_version: {
    base_sha256: "baseSha256",
    edits_version: 1
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signing_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**cms:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**expected_version:** `CloudPDF::Doc::Signatures::Types::DocSignaturesCompleteRequestExpectedVersion` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Signatures::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.signatures.<a href="/lib/CloudPDF/doc/signatures/client.rb">analysis</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocSignaturesAnalysis200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Exactly one of `since.signature=<index>` or `since.revision=<index>`; the layer's pending edits are the end. `level=fill|annotate|lta|none` evaluates exploratorily and never becomes a verdict. For history between two base revisions use the version analysis.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.signatures.analysis(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**since_signature:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**since_revision:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**level:** `CloudPDF::Doc::Signatures::Types::AnalysisSignaturesRequestLevel` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Signatures::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.signatures.<a href="/lib/CloudPDF/doc/signatures/client.rb">prepare</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocSignaturesPrepare200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Multipart: a JSON `body` part (field, subFilter, digest, contentsSize, signer, certify, lock), naming the appearance PDF it may carry as `resources: { appearance: '<key>' }`, and that PDF as the part `resource:<key>`. A certification (`certify.permission`) additionally requires `doc.sign.certify`. The layer is read-only until the signing completes, is cancelled, or expires (15 minutes). The signature is made over the layer's own base: the upload, or the version its last signature made.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.signatures.prepare(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Signatures::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Versions
<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">list</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocVersionsList200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Every completed signature makes a new version of its layer; another layer's versions are never listed. Never cached: the list grows.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.list(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">analysis</a>(doc_id:, layer_name:, sha:) -> CloudPDF::Types::DocVersionsAnalysis200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Exactly one of `since.signature` / `since.revision`; `until=<revision>` defaults to the last. The same answer for every caller.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.analysis(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**since_signature:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**since_revision:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**level:** `CloudPDF::Doc::Versions::Types::AnalysisVersionsRequestLevel` 
    
</dd>
</dl>

<dl>
<dd>

**until_:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">download</a>(doc_id:, layer_name:, sha:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.download(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">revision</a>(doc_id:, layer_name:, sha:, index:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.revision(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha",
  index: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**index:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">signatures</a>(doc_id:, layer_name:, sha:) -> CloudPDF::Types::DocVersionsSignatures200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.signatures(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">signature_contents</a>(doc_id:, layer_name:, sha:, field_key:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

`fieldKey` is the field's fully qualified name, token-text encoded (the same encoding attachment keys use).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.signature_contents(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha",
  field_key: "fieldKey"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**field_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.doc.versions.<a href="/lib/CloudPDF/doc/versions/client.rb">signature_digest</a>(doc_id:, layer_name:, sha:, field_key:, algorithm:) -> String</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

What a CMS verifier compares its message digest to.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.versions.signature_digest(
  doc_id: "docId",
  layer_name: "layerName",
  sha: "sha",
  field_key: "fieldKey",
  algorithm: "sha1"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sha:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**field_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**algorithm:** `CloudPDF::Doc::Versions::Types::SignatureDigestVersionsRequestAlgorithm` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Versions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Doc Metadata Custom
<details><summary><code>client.doc.metadata.custom.<a href="/lib/CloudPDF/doc/metadata/custom/client.rb">get</a>(doc_id:, layer_name:) -> Internal::Types::Hash[String, String]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.metadata.custom.get(
  doc_id: "docId",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**doc_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**document_password:** `String` — Base64-encoded password for an encrypted document. Valid only with the API token (403 anywhere else). An encrypted document answers 422 DocPasswordRequired when the header is absent. Viewer doc JWTs use the SDK password-session flow instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Doc::Metadata::Custom::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Documents Layers
<details><summary><code>client.documents.layers.<a href="/lib/CloudPDF/documents/layers/client.rb">list</a>(tenant_id:, id:) -> CloudPDF::Types::DocumentsLayersList200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.layers.list(
  tenant_id: "tenantId",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::Layers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.documents.layers.<a href="/lib/CloudPDF/documents/layers/client.rb">delete</a>(tenant_id:, id:, layer_name:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.documents.layers.delete(
  tenant_id: "tenantId",
  id: "id",
  layer_name: "layerName"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**layer_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Documents::Layers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Shares Visitors
<details><summary><code>client.shares.visitors.<a href="/lib/CloudPDF/shares/visitors/client.rb">list</a>(tenant_id:, share_id:) -> CloudPDF::Types::SharesVisitorsList200Response</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

An archived link's visitors are listed too.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.visitors.list(
  tenant_id: "tenantId",
  share_id: "shareId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::Visitors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.shares.visitors.<a href="/lib/CloudPDF/shares/visitors/client.rb">delete</a>(tenant_id:, share_id:, visitor_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Their handle brings them back as a new visitor, who is asked again. Deleting a visitor already deleted changes nothing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.shares.visitors.delete(
  tenant_id: "tenantId",
  share_id: "shareId",
  visitor_id: "visitorId"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**share_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**visitor_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `CloudPDF::Shares::Visitors::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

