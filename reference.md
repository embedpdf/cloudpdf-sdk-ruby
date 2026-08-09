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

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">render</a>(doc_id:, layer_name:, pon:) -> String</code></summary>
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
  pon: 1
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

**pon:** `Integer` 
    
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

<details><summary><code>client.doc.<a href="/lib/CloudPDF/doc/client.rb">text</a>(doc_id:, layer_name:, pon:) -> CloudPDF::Types::DocText200Response</code></summary>
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
  pon: 1
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

**pon:** `Integer` 
    
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

**state:** `CloudPDF::Documents::Types::ListDocumentsRequestState` 
    
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

**dedup_mode:** `CloudPDF::Documents::Types::DocumentsInitRequestDedupMode` 
    
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

**request_options:** `CloudPDF::Documents::RequestOptions` 
    
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
<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">list</a>(doc_id:, layer_name:, pon:) -> CloudPDF::Types::DocAnnotationsList200Response</code></summary>
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
  pon: 1
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

**pon:** `Integer` 
    
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

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">create</a>(doc_id:, layer_name:, pon:, request) -> CloudPDF::Types::DocAnnotationsCreate200Response</code></summary>
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
  pon: 1,
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

**pon:** `Integer` 
    
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

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">delete</a>(doc_id:, layer_name:, pon:, annot_key:) -> CloudPDF::Types::DocAnnotationsDelete200Response</code></summary>
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
  pon: 1,
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

**pon:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` 
    
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

<details><summary><code>client.doc.annotations.<a href="/lib/CloudPDF/doc/annotations/client.rb">update</a>(doc_id:, layer_name:, pon:, annot_key:, request) -> CloudPDF::Types::DocAnnotationsUpdate200Response</code></summary>
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
  pon: 1,
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

**pon:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**annot_key:** `String` 
    
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

## Doc Forms
<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">get</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocFormsGet200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.get(
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

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">export_data</a>(doc_id:, layer_name:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.export_data(
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

**format:** `CloudPDF::Doc::Forms::Types::ExportDataFormsRequestFormat` 
    
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

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">import_data</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocFormsImportData200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.forms.import_data(
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

<details><summary><code>client.doc.forms.<a href="/lib/CloudPDF/doc/forms/client.rb">reset</a>(doc_id:, layer_name:, field_key:) -> CloudPDF::Types::DocFormsReset200Response</code></summary>
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
  layer_name: "layerName",
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

## Doc Metadata
<details><summary><code>client.doc.metadata.<a href="/lib/CloudPDF/doc/metadata/client.rb">get</a>(doc_id:, layer_name:) -> CloudPDF::Types::DocMetadataGet200Response</code></summary>
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

## Doc Pages
<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">delete</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesDelete200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.delete(
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

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">move</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesMove200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.move(
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

<details><summary><code>client.doc.pages.<a href="/lib/CloudPDF/doc/pages/client.rb">rotate</a>(doc_id:, layer_name:, request) -> CloudPDF::Types::DocPagesRotate200Response</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.doc.pages.rotate(
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

**request:** `Internal::Types::Hash[String, Object]` 
    
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

