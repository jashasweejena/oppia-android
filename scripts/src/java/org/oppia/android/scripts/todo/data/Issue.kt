package org.oppia.android.scripts.todo.data

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * Data class that contains the required details of an [Issue] that is present in
 * open_issues.json.
 */
@JsonClass(generateAdapter = true)
data class Issue(
  /** The issue number of the [Issue] */
  @Json(name = "number") val issueNumber: String,
)
