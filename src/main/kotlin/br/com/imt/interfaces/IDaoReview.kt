package br.com.imt.interfaces

import br.com.imt.models.Review


interface IDaoReview {
    fun insert(obj: Review)
    fun update(obj: Review)
    fun delete(id: Int)
    fun get(id: Int): Review
}